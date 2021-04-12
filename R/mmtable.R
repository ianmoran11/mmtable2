mmtable <- function(data,table_data, table_name = NULL){

  if(is.null(table_name)){table_name <- paste0("Table ",sample(LETTERS,size = 5) %>% paste(collapse = "")) }

  col_header_df <- tibble::tibble(col_header_vars = c(NA),direction = c(NA))
  row_header_df <- tibble::tibble(row_header_vars = c(NA), direction = c(NA))
  data_vars <- substitute(table_data) %>% as.character()
  table_meta <- list(
    table_name = table_name
  )

  table_constructor(data,col_header_df,row_header_df,data_vars,table_meta)

}
