
`*.mmtable` <-function(mmtable1,mmtable2){

  # browser()

  if(is.null(mmtable2)){return(mmtable1)}
  if(is.null(mmtable1)){return(mmtable2)}

  if(is.null(mmtable2)){return(mmtable1)}

  headers_1 <- attributes(mmtable1) %>% .[["_header_info"]]
  headers_2 <- attributes(mmtable2) %>% .[["_header_info"]]

  original_data_1 <- attributes(mmtable1) %>% .[["_original_data"]]
  original_data_2 <- attributes(mmtable2) %>% .[["_original_data"]]

  table_meta_1 <- attributes(mmtable1) %>% .[["_table_meta"]]
  table_meta_2 <- attributes(mmtable2) %>% .[["_table_meta"]]

  table_format_1 <- attributes(mmtable1) %>% .[["_table_format"]]
  table_format_2 <- attributes(mmtable2) %>% .[["_table_format"]]

  original_data <- bind_rows(original_data_2,original_data_1)

  col_header_df_1 <- headers_1$col_header_df %>% map_dfr(as.character)
  row_header_df_1 <- headers_1$row_header_df %>% map_dfr(as.character)
  data_vars_1 <-     headers_1$data_vars

  col_header_df_2 <- headers_2$col_header_df %>% map_dfr(as.character)
  row_header_df_2 <- headers_2$row_header_df %>% map_dfr(as.character)
  data_vars_2 <-     headers_2$data_vars

  col_header_df_temp <-  bind_rows(col_header_df_2,col_header_df_1) %>% filter(complete.cases(.)) %>% unique()
  row_header_df_temp <-  bind_rows(row_header_df_2,row_header_df_1) %>% filter(complete.cases(.)) %>% unique()
  table_name <-  table_meta_1$table_name


  if(!is.null(table_format_1) & !is.null(table_format_2)){

    table_format  <- append(table_format_1, table_format_2)

  }

  if(!is.null(table_format_1) & is.null(table_format_2)){
    initial_format_list <-  list(list(header = list(), format_list = list()))
    initial_format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))
    names(initial_format_list) <- initial_format_list_name

    table_format  <- append(table_format_1, initial_format_list)

  }

  if(is.null(table_format_1) & !is.null(table_format_2)){

    initial_format_list <-  list(list(header = list(), format_list = list()))
    initial_format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))
    names(initial_format_list) <- initial_format_list_name

    table_format  <- append(initial_format_list,table_format_2)
  }

  if(is.null(table_format_1) & is.null(table_format_2)){

    initial_format_list_1 <-  list(list(header = list(), format_list = list()))
    initial_format_list_name_1 <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))
    names(initial_format_list_1) <- initial_format_list_name_1

    initial_format_list_2 <-  list(list(header = list(), format_list = list()))
    initial_format_list_name_2 <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))
    names(initial_format_list_2) <- initial_format_list_name_2

    table_format  <- append(initial_format_list_1,initial_format_list_2)
  }





  table_constructor(
    df = original_data,
    col_header_df = col_header_df_temp,
    row_header_df = row_header_df_temp,data_vars = data_vars_1, table_name = table_name,
    table_format = table_format)

}
