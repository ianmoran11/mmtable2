`/.mmtable` <- function(mmtable1,mmtable2){

  # mmtable1 <- table1
  # mmtable2 <- table1

#  Get table 1 attributes
    # Give table_id_header
  table_meta_1 <- attr(mmtable1,"_table_meta")
  attr(mmtable1,"_original_data") <-
    attr(mmtable1,"_original_data") %>% mutate(table_id_row = table_meta_1$table_name[[1]])
  # Get header info
  header_info_1 <- attr(mmtable1,"_header_info")

  # Update header info
  header_info_1$row_header_df <- header_info_1$row_header_df %>% bind_rows(tibble(row_header_vars = "table_id_row", direction = "left_top"), .)
  attr(mmtable1,"_header_info") <- header_info_1


  # Get table 2 attibutes
  table_meta_2 <- attr(mmtable2,"_table_meta")
  attr(mmtable2,"_original_data") <-
    attr(mmtable2,"_original_data") %>% mutate(table_id_row = table_meta_2$table_name[[1]])
  # Get header info
  header_info_2 <- attr(mmtable2,"_header_info")
  # Update header info
  header_info_2$row_header_df <- header_info_2$row_header_df %>% bind_rows(tibble(row_header_vars = "table_id_row", direction = "left_top"), .)
  attr(mmtable2,"_header_info") <- header_info_2

  mmtable1 * mmtable2

}




