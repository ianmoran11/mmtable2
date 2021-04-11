mmtable <- function(data,table_data){

  col_header_df <- tibble::tibble(col_header_vars = c(NA),direction = c(NA))
  row_header_df <- tibble::tibble(row_header_vars = c(NA), direction = c(NA))
  data_vars <- substitute(table_data) %>% as.character()
  table_constructor(data,col_header_df,row_header_df,data_vars)

}
