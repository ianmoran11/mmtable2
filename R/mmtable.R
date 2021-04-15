
#' Conditionally apply a function
#'
#' @param data a data frame
#' @param table_data the name of the column whose values will form the data cells.
#' @param table_name the name of the table - used for labelling when joined with another table - randomly generated if not provided.
#' @return mmtable
#' @export
#' @examples


mmtable <- function(data,table_data, table_name = NULL){

  # browser()

  if(is.null(table_name)){table_name <- paste0("Table ",sample(LETTERS,size = 5) %>% paste(collapse = "")) }

  temp_value_var <- as.character(substitute(table_data))

  data <- data %>% mutate(.value = !!sym(temp_value_var) %>% as.character())

  initial_format_list <-  list(list(header = list(), format_list = list()))
  initial_format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))
  names(initial_format_list) <- initial_format_list_name


  table_format <- initial_format_list

  col_header_df <- tibble::tibble(col_header_vars = c(NA),direction = c(NA))
  row_header_df <- tibble::tibble(row_header_vars = c(NA), direction = c(NA))
  # data_vars <- substitute(table_data) %>% as.character()
  data_vars <- ".value"
  table_meta <- list(
    table_name = table_name
  )

  tc <- table_constructor(data,col_header_df,row_header_df,data_vars,table_meta, table_format)


  attr(tc, "_table_format") <- attr(tc, "_table_format") %>%
    append(.,    table_format(locations = "all",style = list(cell_text(size = px(12)))))

  attr(tc, "_table_format") %>% .[[1]]
  attr(tc, "_table_format") %>% .[[2]]


  attr(tc, "_table_format") %>% names()

  return(tc)

}
