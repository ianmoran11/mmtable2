
#' Create an mmtable object
#'
#' @param data a data frame
#' @param cells the name of the column whose values will form the data cells.
#' @param table_name the name of the table - used for labeling when joined with another table - randomly generated if not provided.
#' @param use_default_formats determines whether or note the table will have default formatting applied. Default value = TRUE.
#' @return mmtable
#' @export
#' @importFrom magrittr %>%
#' @importFrom dplyr bind_rows
#' @importFrom purrr invoke
#' @importFrom dplyr mutate
#' @importFrom gt cell_text
#' @importFrom tibble tibble
#' @examples
#' \dontrun{
#'
#' library(tidyverse)
#'
#' row_list <- cells_body(rows = c(1,3,5,7,9,11))
#' style_list <- list(cell_borders(sides = "top",color = "grey"))
#' gm_df <- gapminder_mm %>% dplyr::filter(var != "Life expectancy")
#'
#' gm_table <-
#'   gm_df %>%
#'   mmtable(cells = value) +
#'   header_top(year) +
#'   header_left(country) +
#'   header_top_left(var)  +
#'   header_left_top(continent)  +
#'   table_format(
#'     locations = row_list,
#'     style = style_list)
#' }

mmtable <- function(data,cells, table_name = NULL, use_default_formats = TRUE){

  # browser()

  if(is.null(table_name)){table_name <- paste0("Table ",sample(LETTERS,size = 5) %>% paste(collapse = "")) }


  data <- data %>% mutate(.value = {{cells}} %>% as.character())

  initial_format_list <-  list(list(header = list(), format_list = list()))
  initial_format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))
  names(initial_format_list) <- initial_format_list_name


  table_format <- initial_format_list

  col_header_df <- tibble::tibble(col_header_vars = c(NA),direction = c(NA))
  row_header_df <- tibble::tibble(row_header_vars = c(NA), direction = c(NA))
  # data_vars <- substitute(cells) %>% as.character()
  data_vars <- ".value"
  table_meta <- list(
    table_name = table_name
  )

  tc <- table_constructor(data,col_header_df,row_header_df,data_vars,table_meta, table_format)


  if(use_default_formats == TRUE){
  attr(tc, "_table_format") <- attr(tc, "_table_format") %>%
    append(.,table_format(locations = "all",style = list(cell_text(size = px(12))))) %>%
    append(.,cells_format(cell_predicate = T, style = list(cell_text(align = "right")))) %>%
    append(.,header_format(header = "all_cols", style = list(cell_text(align = "right",weight = "bold")))) %>%
    append(.,header_format(header = "all_rows", style = list(cell_text(weight = "bold"))))
  }else{
    attr(tc, "_table_format") <- attr(tc, "_table_format") %>%
      append(.,table_format(locations = "all",style = list(cell_text(size = px(12)))))
  }

  attr(tc, "_table_format") %>% .[[1]]
  attr(tc, "_table_format") %>% .[[2]]


  attr(tc, "_table_format") %>% names()

  return(tc)

}
