#' Conditionally apply a function
#'
#' @param e1 an mmtable
#' @param e2 an mmtable
#' @return an mmtable
#' @examples
#' @export
#' @S3method  print mmtable
#' @method generic class
#' @export

print.mmtable  <-function(mmtable){

  # browser()

  formatted_mmtable <- apply_formats(mmtable)

  class(formatted_mmtable) <- c("gt_tbl","list")

  print(formatted_mmtable %>% gt::tab_options(column_labels.hidden = T))

}
