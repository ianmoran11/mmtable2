#' Conditionally apply a function
#'
#' @param mmtable an mmtable
#' @param header header from original data
#' @param func the original formatting function applied
#' @param cell_predicate predicate to determine locations
#' @return locations
#' @export

get_locations <- function(mmtable,header = NULL, func,cell_predicate = NULL){

  # browser()

  if(func =="header_format"){

    header_dfs <-
      mmtable %>% attributes() %>% .[["_header_info"]] %>% .[c("col_header_df","row_header_df")] %>%
      map(~ .x %>% mutate(header_no = row_number() ))

   if(header == "all_cols"){

     if(nrow(header_dfs$col_header_df) == 0){
       return(list(row = NA, col = NA))
     }


     rows_to_modify <- header_dfs$col_header_df %>% pull(header_no)

     cols_to_modify <-
       map(rows_to_modify, ~ mmtable$`_data`[.x,] %>% unlist %>% str_detect("[:alnum:]") %>% which() %>% expand_grid(row = .x, col =.))

     return_list <- cols_to_modify %>% bind_rows() %>% mutate(listed = map2(row,col, ~ list(row = .x, col = .y))) %>% pull(listed)

     return(return_list)

   }

   if(header == "all_rows"){

     if(nrow(header_dfs$row_header_df) == 0){
       return(list(row = NA, col = NA))
     }

     cols_to_modify <- header_dfs$row_header_df %>% pull(header_no)


     rows_to_modify <-
       map(cols_to_modify, ~ mmtable$`_data`[,.x] %>% unlist %>% str_detect("[:alnum:]") %>% which() %>% expand_grid(row = .x, col =.))

     return_list <-
       rows_to_modify %>% bind_rows() %>% mutate(listed = map2(col,row, ~ list(row = .x, col = .y))) %>% pull(listed)

     return(return_list)

   }




   if(header %in% header_dfs$col_header_df$col_header_vars){
     rows_to_modify <- header_dfs$col_header_df %>% filter(col_header_vars == header) %>% pull(header_no)
     cols_to_modify <- mmtable$`_data`[rows_to_modify,] %>% unlist %>% str_detect("[:alnum:]") %>% which()
   }

   if(header %in% header_dfs$row_header_df$row_header_vars){

     cols_to_modify <- header_dfs$row_header_df %>% filter(row_header_vars == header) %>% pull(header_no)
     rows_to_modify <- mmtable$`_data`[,cols_to_modify] %>% unlist %>% str_detect("[:alnum:]") %>% which()
   }

   return_list <- map2(rows_to_modify, cols_to_modify, function(x,y) list(rows = x, cols = y))

   return(return_list)

 }

  if(func =="cells_format"){

    mmtable_keyed <- mmtable

    attr(mmtable_keyed,"_original_data") <-
      attr(mmtable,"_original_data") %>%
      mutate(.value_key = gen_random_ids(n = nrow(.),length = 10))

    mmtalbe_keyed_constructed <-
      table_constructor(df = attr(mmtable_keyed,"_original_data"),
                        col_header_df = attr(mmtable_keyed,"_header_info") %>% .[["col_header_df"]],
                        row_header_df = attr(mmtable_keyed,"_header_info") %>% .[["row_header_df"]],
                        data_vars = ".value_key",
                        table_name = attr(mmtable_keyed,"_table_meta") %>% .[["table_name"]],
                        table_format = attr(mmtable_keyed,"_table_meta") %>% .[["_table_format"]])

    #-------------------

    mmtalbe_keyed_constructed_rowcol_index  <-
      mmtalbe_keyed_constructed$`_data` %>% set_names(1:ncol(.)) %>% mutate(row = row_number()) %>%
      gather(column,value, -row)

       filtered_key_values <-
         attr(mmtable_keyed,"_original_data") %>% filter(!!!cell_predicate) %>% pull(.value_key)

       selected_rows <-
         mmtalbe_keyed_constructed_rowcol_index %>% filter(value %in% filtered_key_values)

       return_list <-  map2(selected_rows$row %>% as.numeric, selected_rows$column %>% as.numeric,
            function(x,y) list(rows = x, cols = y))

       return(return_list)

  }





}
