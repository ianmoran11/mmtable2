
#' Add a table title
#'
#' @param ... arguments of gt::tab_header
#' @return format list
#' @importFrom magrittr %>%
#' @importFrom gt tab_header
#' @export


table_title <- function(...){

  # browser()
  # text <- "Hello"
  table_title_fn <- function(mmtable1,...){ mmtable1 %>% tab_header(...)}

  attr(table_title_fn,"table_args") <-list(...)

  class(table_title_fn) <- append("mmtable",class(table_title_fn))
  class(table_title_fn) <- append("mmtable_table_item",class(table_title_fn))


  table_title_fn

}

#' Table source note
#'
#' @param ... arguments of gt::tab_source_note
#' @return format list
#' @importFrom gt tab_source_note
#' @export

table_source_note <- function(...){

  # browser()
  # text <- "Hello"
  table_title_fn <- function(mmtable1,...){ mmtable1 %>% tab_source_note(...)}

  attr(table_title_fn,"table_args") <-list(...)

  class(table_title_fn) <- append("mmtable",class(table_title_fn))
  class(table_title_fn) <- append("mmtable_table_item",class(table_title_fn))


  table_title_fn

}

#' Add a table source note
#'
#' @param mmtable an mmtable object
#' @param ... arguments of gt::tab_source_note
#' @return an mmtable
#' @export

add_table_source_note <- function(mmtable,...){
  `+`(mmtable, table_source_note(...))
}

