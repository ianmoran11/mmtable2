#' Identify which locations are to be formatted.
#'
#' @param mmtable an mmtable
#' @param header header from original data
#' @param func the original formatting function applied
#' @param cell_predicate predicate to determine locations
#' @return locations
#' @export
#' @importFrom magrittr %>%
#' @importFrom dplyr bind_rows
#' @importFrom tidyr gather
#' @importFrom purrr map
#' @importFrom purrr map2
#' @importFrom dplyr mutate
#' @importFrom dplyr pull
#' @importFrom dplyr row_number
#' @importFrom purrr set_names
#' @importFrom stringr str_detect

get_locations <- function(mmtable,header = NULL, func,cell_predicate = NULL, scope = "cell"){

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

     if("merged_headers" %in% class(mmtable)){
       all_cells_locations <-
         tidyr::crossing(row = 1:nrow(mmtable$`_data`), col = 1:ncol(mmtable$`_data`)) %>%
         mutate(all_cells_locations = map2(row,col,~ list(row = .x, col = .y))) %>%
         pull(all_cells_locations)

       return_list[!return_list %in% all_cells_locations]

       row_deductor <- attr(mmtable,"_header_info") %>% .[["col_header_df"]] %>% nrow()

       return_list <-  return_list %>% map( ~list(row = .x[[1]] -row_deductor, col = .x[[2]] ))

       return_list[!return_list %in% all_cells_locations]
       return_list <- return_list[return_list %in% all_cells_locations]

     }

     vec_return_list <- single_cells_to_vector(return_list)

       # return(return_list)
       return(vec_return_list)
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


     # if("merged_headers" %in% class(mmtable)){
     #
     #   all_cells_locations <-
     #     crossing(row = 1:nrow(mmtable$`_data`), col = 1:ncol(mmtable$`_data`)) %>%
     #     mutate(all_cells_locations = map2(row,col,~ list(row = .x, col = .y))) %>%
     #     pull(all_cells_locations)
     #
     #   return_list[!return_list %in% all_cells_locations]
     #
     #   row_deductor <- attr(mmtable,"_header_info") %>% .[["col_header_df"]] %>% nrow()
     #
     #   return_list <-  return_list %>% map( ~list(row = .x[[1]] -row_deductor, col = .x[[2]] ))
     #
     #   return_list[!return_list %in% all_cells_locations]
     # }

    # browser()

     vec_return_list <- single_cells_to_vector(return_list)

       # return(return_list)
       return(vec_return_list)





   }




   if(header %in% header_dfs$col_header_df$col_header_vars){
     if(scope == "table"){ rows_to_modify <- 1:nrow(mmtable$`_data`)}
     if(scope == "headers"){ rows_to_modify <- 1:(max(header_dfs$col_header_df$header_no))}
     if(scope == "cell"){  rows_to_modify <- header_dfs$col_header_df %>% dplyr::filter(col_header_vars == header) %>% pull(header_no)}

     header_cols_with_content <- header_dfs$col_header_df %>% dplyr::filter(col_header_vars == header) %>% pull(header_no)
     cols_to_modify <- mmtable$`_data`[header_cols_with_content,] %>% unlist %>% str_detect("[:alnum:]") %>% which()

     cell_combinations <- crossing(cols_to_modify,rows_to_modify) %>% unique()

     cols_to_modify <- cell_combinations$cols_to_modify
     rows_to_modify <- cell_combinations$rows_to_modify

   }

   if(header %in% header_dfs$row_header_df$row_header_vars){
     # browser()

     if(scope == "table"){ cols_to_modify <- 1:ncol(mmtable$`_data`)}
     if(scope == "headers"){ cols_to_modify <- 1:(max(header_dfs$col_header_df$header_no))}
     if(scope == "cell"){  cols_to_modify <- header_dfs$row_header_df %>% dplyr::filter(row_header_vars == header) %>% pull(header_no)}

     header_rows_with_content <- header_dfs$row_header_df %>% dplyr::filter(row_header_vars == header) %>% pull(header_no)
     rows_to_modify <- mmtable$`_data`[,header_rows_with_content] %>% unlist %>% str_detect("[:alnum:]") %>% which()

     cell_combinations <- crossing(cols_to_modify,rows_to_modify) %>% unique()

     cols_to_modify <- cell_combinations$cols_to_modify
     rows_to_modify <- cell_combinations$rows_to_modify


     # cols_to_modify <- header_dfs$row_header_df %>% dplyr::filter(row_header_vars == header) %>% pull(header_no)
     # rows_to_modify <- mmtable$`_data`[,cols_to_modify] %>% unlist %>% str_detect("[:alnum:]") %>% which()
   }

   return_list <- map2(rows_to_modify, cols_to_modify, function(x,y) list(row = x, col = y))


   vec_return_list <- single_cells_to_vector(return_list)

       # return(return_list)
       return(vec_return_list)


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
         attr(mmtable_keyed,"_original_data") %>% dplyr::filter(!!!cell_predicate) %>% pull(.value_key)

       selected_rows <-
         mmtalbe_keyed_constructed_rowcol_index %>% dplyr::filter(value %in% filtered_key_values)

       return_list <-  map2(selected_rows$row %>% as.numeric, selected_rows$column %>% as.numeric,
            function(x,y) list(row = x, col = y))



       if("merged_headers" %in% class(mmtable)){

         all_cells_locations <-
           tidyr::crossing(row = 1:nrow(mmtable$`_data`), col = 1:ncol(mmtable$`_data`)) %>%
           mutate(all_cells_locations = map2(row,col,~ list(row = .x, col = .y))) %>%
           pull(all_cells_locations)

         return_list[!return_list %in% all_cells_locations]

         row_deductor <- attr(mmtable,"_header_info") %>% .[["col_header_df"]] %>% nrow()

         return_list <-  return_list %>% map( ~list(row = .x[[1]] -row_deductor, col = .x[[2]] ))

         return_list[!return_list %in% all_cells_locations]

         return_list <- return_list[return_list %in% all_cells_locations]


       }


       vec_return_list <- single_cells_to_vector(return_list)

       # return(return_list)
       return(vec_return_list)


  }





}
