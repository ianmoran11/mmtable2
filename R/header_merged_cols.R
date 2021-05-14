#' Merge header columns
#'
#' @param ... formating instructions
#' @return format list
#' @export

header_merged_cols <- function(...){

   return_list <-   list(...)

   class(return_list) <- "merged_headers"

   return_list

}
