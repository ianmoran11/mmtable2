#' Conditionally apply a function
#'
#' @param x an mmtable
#' @param ... other things
#' @export
#' @S3method  print mmtable
#' @importFrom magrittr %>%

 print.mmtable  <-function(x, ...){

  apply_formats(x)

 }


# print.mmtable  <-function(x, ...){
#
#   # browser()
#   if("merged_headers" %in% class(x)){
#
#     # browser()
#   formatted_mmtable_html <-   apply_formats(x) %>%  attr("merged_col_html")
#     # Use `print()` to print to the console
#
#   html_print(formatted_mmtable_html)
#
#   return(formatted_mmtable_html)
#
#   }
#
#  formatted_mmtable <-  apply_formats(x) %>% gt::tab_options(column_labels.hidden = T)
#  html_tbl <- gt:::as.tags.gt_tbl(formatted_mmtable)
#  # Use `print()` to print to the console
#  print(html_tbl, browse = view, ...)
#
#
#
#
# }

#
#
#
knit_print.mmtable  <-function(x, ...){

  knitr::knit_print(apply_formats(x))
}


