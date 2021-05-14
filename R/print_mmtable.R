#' Print an mmtable object
#'
#' @param x an mmtable
#' @param ... other things
#' @export
#' @S3method  print mmtable
#' @importFrom magrittr %>%

 print.mmtable  <-function(x, ...){

  # apply_formats(x) %>% attr("html")  %>%  htmltools::html_print()

   html <- apply_formats(x) %>% attr("html") %>% as.character() %>% str_split("\n") %>% .[[1]] %>%
       str_trim() %>% keep(nchar(.)>0) %>% paste(collapse = "\n") %>% htmltools::HTML()

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

   # knitr::asis_output(attr(apply_formats(x),"html"))

   apply_formats(x) %>% attr("html") %>% as.character() %>% str_split("\n") %>% .[[1]] %>%
     str_trim() %>% keep(nchar(.)>0) %>% paste(collapse = "\n") %>% htmltools::HTML() %>% knitr::asis_output()

 }

