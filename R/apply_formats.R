#' Apply list of formating commands to a mmtable
#'
#' @param mmtable an mmtable
#' @return mmtable
#' @export
#' @examples

apply_formats <- function(mmtable){

 # browser()

  table_format_list <- mmtable %>% attr("_table_format")

  non_empty_format_lists <-   table_format_list %>% keep(!map_lgl(.,~ unlist(.) %>% is.null))

  mmtable_return <- append(list(mmtable), non_empty_format_lists) %>% reduce(apply_format)

  mmtable_return
}
