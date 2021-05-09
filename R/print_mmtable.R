#' Conditionally apply a function
#'
#' @param x an mmtable
#' @param ... other things
#' @export
#' @S3method  print mmtable
#' @importFrom magrittr %>%


print.mmtable  <-function(x, ...){

  # browser()



  if("merged_headers" %in% class(x)){

  return(apply_formats(x))
  }

 formatted_mmtable <-  apply_formats(x)

 class(formatted_mmtable) <- c("gt_tbl","list")

 final_table <- formatted_mmtable %>% gt::tab_options(column_labels.hidden = T)

 print(final_table)

}
