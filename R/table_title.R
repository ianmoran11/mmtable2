
#' Conditionally apply a function
#'
#' @param ... formating instructions
#' @return format list
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

#' Conditionally apply a function
#'
#' @param ... formating instructions
#' @return format list
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

#' Conditionally apply a function
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return format list
#' @export

add_table_source_note <- function(mmtable,...){
  `+`(mmtable, table_source_note(...))
}

