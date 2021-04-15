#' Conditionally apply a function
#'
#' @param e1 an mmtable
#' @param e2 an mmtable
#' @return an mmtable
#' @examples
#' @export
#' @S3method  "/" mmtable
#' @method generic class
#' @export


"/.mmtable" <- function(e1, e2) {

  # browser()
  if(is.null(e2)){return(e1)}
  if(is.null(e1)){return(e2)}

  # e1 <- table1
  # e2 <- table1

#  Get table 1 attributes
    # Give table_id_header
  table_meta_1 <- attr(e1,"_table_meta")

  table_format_1 <- attr(e1,"_table_format")
  header_info_1 <- attr(e1,"_header_info")

  # Update header info
  if(!"table_id_row" %in% names(attr(e1,"_original_data"))){
    attr(e1,"_original_data") <-  attr(e1,"_original_data") %>% mutate(table_id_row = table_meta_1$table_name[[1]])
  }

  header_info_1$row_header_df <- header_info_1$row_header_df %>% bind_rows(tibble(row_header_vars = "table_id_row", direction = "left_top"), .)
  attr(e1,"_header_info") <- header_info_1


  # Get table 2 attibutes
  table_meta_2 <- attr(e2,"_table_meta")
  table_format_2 <- attr(e2,"_table_format")

  if(!"table_id_row" %in% names(attr(e2,"_original_data"))){
    attr(e2,"_original_data") <-attr(e2,"_original_data") %>% mutate(table_id_row = table_meta_2$table_name[[1]])
  }

  header_info_2 <- attr(e2,"_header_info")
  header_info_2$row_header_df <- header_info_2$row_header_df %>% bind_rows(tibble(row_header_vars = "table_id_row", direction = "left_top"), .)
  attr(e2,"_header_info") <- header_info_2

  # e1 %>% attributes()
  # e2 %>% attributes()

  e1 * e2

}



# .onLoad <- function(...) {
#   register_s3_method("/")
#   invisible()
# }

