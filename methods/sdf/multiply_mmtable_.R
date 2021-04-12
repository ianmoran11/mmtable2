
`*.mmtable` <-function(mmtable1,mmtable2){

  # browser()

  if(is.null(mmtable2)){return(mmtable1)}

  headers_1 <- attributes(mmtable1) %>% .[["_header_info"]]
  headers_2 <- attributes(mmtable2) %>% .[["_header_info"]]

  original_data_1 <- attributes(mmtable1) %>% .[["_original_data"]]
  original_data_2 <- attributes(mmtable2) %>% .[["_original_data"]]

  original_data <- bind_rows(original_data_2,original_data_1)

  col_header_df_1 <- headers_1$col_header_df %>% map_dfr(as.character)
  row_header_df_1 <- headers_1$row_header_df %>% map_dfr(as.character)
  data_vars_1 <-     headers_1$data_vars

  col_header_df_2 <- headers_2$col_header_df %>% map_dfr(as.character)
  row_header_df_2 <- headers_2$row_header_df %>% map_dfr(as.character)
  data_vars_2 <-     headers_2$data_vars

  col_header_df_temp <-  bind_rows(col_header_df_2,col_header_df_1) %>% filter(complete.cases(.)) %>% unique()
  row_header_df_temp <-  bind_rows(row_header_df_2,row_header_df_1) %>% filter(complete.cases(.)) %>% unique()

  table_constructor(
    df = original_data,
    col_header_df = col_header_df_temp,
    row_header_df = row_header_df_temp,data_vars = data_vars_1)

}
