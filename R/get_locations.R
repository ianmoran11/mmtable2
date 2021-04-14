get_locations <- function(mmtable,header){

 # browser()

  header_dfs <-
  mmtable %>% attributes() %>% .[["_header_info"]] %>% .[c("col_header_df","row_header_df")] %>%
    map(~ .x %>% mutate(header_no = row_number() ))


  rows_to_modify <- header_dfs$col_header_df %>% filter(col_header_vars == header) %>% pull(header_no)
  cols_to_modify <- mmtable$`_data`[rows_to_modify,] %>% unlist %>% str_detect("[:alnum:]") %>% which()

  return_list <- map2(rows_to_modify, cols_to_modify, function(x,y) list(rows = x, cols = y))

  return_list

}
