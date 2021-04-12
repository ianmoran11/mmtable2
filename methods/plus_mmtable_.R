`+.mmtable` <- function(mmtable1,mmtable2){

  # browser()

  # mmtable1 <- table1
  # mmtable2 <- table1

  if(is.null(mmtable2)){return(mmtable1)}


  if("mmtable_header" %in% class(mmtable2)){
    return(mmtable1 * mmtable2)
  }


  if("mmtable_table_item" %in% class(mmtable2)){
    # return(mmtable1 * mmtable2)

    return_table <- invoke(mmtable2, append(list(mmtable1),attr(mmtable2,"table_args")))

    class(return_table) <- append("mmtable",class(return_table))

    return(return_table)

  }

  #  Get table 1 attributes
  # Give table_id_header
  attr(mmtable1,"_original_data") <- attr(mmtable1,"_original_data") %>% mutate(table_id_col = "Table 1")
  # Get header info
  header_info_1 <- attr(mmtable1,"_header_info")
  # Update header info
  header_info_1$col_header_df <- header_info_1$col_header_df %>% bind_rows(tibble(col_header_vars = "table_id_col", direction = "top_left"), .)
  attr(mmtable1,"_header_info") <- header_info_1


  # Get table 2 attibutes
  attr(mmtable2,"_original_data") <- attr(mmtable2,"_original_data") %>% mutate(table_id_col = "Table 2")
  # Get header info
  header_info_2 <- attr(mmtable2,"_header_info")
  # Update header info
  header_info_2$col_header_df <- header_info_2$col_header_df %>% bind_rows(tibble(col_header_vars = "table_id_col", direction = "top_left"), .)
  attr(mmtable2,"_header_info") <- header_info_2

  attributes(mmtable1)
  attributes(mmtable2)

  mmtable1 * mmtable2


}
