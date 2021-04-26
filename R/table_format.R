
#' Conditionally apply a function
#'
#' @param locations indicating which cells should be fomrated
#' @param ... formating instructions
#' @return format list
#' @export
#' @examples
#' \dontrun{
#'
#' library(tidyverse)
#'
#' row_list <- cells_body(rows = c(1,3,5,7,9,11))
#' style_list <- list(cell_borders(sides = "top",color = "grey"))
#' gm_df <- gapminder_mm %>% filter(var != "Life expectancy")
#'
#' gm_table <-
#'   gm_df %>%
#'   mmtable(table_data = value) +
#'   header_top(year) +
#'   header_left(country) +
#'   header_top_left(var)  +
#'   header_left_top(continent)  +
#'   table_format(
#'     locations = row_list,
#'     style = style_list)
#' }


table_format <- function(locations, ...){
# browser()
  format_list <-
    list(list(locations = locations,func = "table_format", format_list = list(formats = ...)))

  class(format_list) <- append("table_format_list",class(format_list))

  format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))

  names(format_list) <- format_list_name

  format_list



}

