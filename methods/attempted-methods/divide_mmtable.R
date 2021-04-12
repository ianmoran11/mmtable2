`divide_mmtable` <- function(mmtable1,mmtable2){

  # mmtable1 <- table1
  # mmtable2 <- table1

#  Get table 1 attributes
    # Give table_id_header
  attr(mmtable1,"_original_data") <- attr(mmtable1,"_original_data") %>% mutate(table_id_row = "Table 1")
    # Get header info
  header_info_1 <- attr(mmtable1,"_header_info")
  # Update header info
  header_info_1$row_header_df <- header_info_1$row_header_df %>% bind_rows(tibble(row_header_vars = "table_id_row", direction = "left_top"), .)
  attr(mmtable1,"_header_info") <- header_info_1


# Get table 2 attibutes
  attr(mmtable2,"_original_data") <- attr(mmtable2,"_original_data") %>% mutate(table_id_row = "Table 2")
  # Get header info
  header_info_2 <- attr(mmtable2,"_header_info")
  # Update header info
  header_info_2$row_header_df <- header_info_2$row_header_df %>% bind_rows(tibble(row_header_vars = "table_id_row", direction = "left_top"), .)
  attr(mmtable2,"_header_info") <- header_info_2

  mmtable1 * mmtable2

}

#' @export
"/.mmtable" <- function(e1, e2) {
  divide_mmtable(e1, e2)
}


