#' Conditionally apply a function
#'
#' @param x an mmtable
#' @param ... other things
#' @export
#' @S3method  print mmtable

print.mmtable  <-function(x, ...){

  # browser()

  formatted_mmtable <- apply_formats(x)

  class(formatted_mmtable) <- c("gt_tbl","list")

  print(formatted_mmtable %>% gt::tab_options(column_labels.hidden = T))

}
