#' Print an mmtable object
#'
#' @param x an mmtable
#' @param ... other things
#' @export
#' @S3method  print mmtable
#' @importFrom magrittr %>%

 print.mmtable  <-function(x, ...){

   html <- apply_formats(x) %>% attr("html")

   htmltools::html_print(html)

   html %>% knitr::asis_output()

 }



#' Print an mmtable object
#'
#' @param x an mmtable
#' @param ... other things
#' @export
#' @S3method  print mmtable
#' @importFrom magrittr %>%
 knit_print.mmtable  <-function(x, ...){

   apply_formats(x) %>% attr("html") %>% knitr::asis_output()

 }

