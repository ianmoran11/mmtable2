#' Conditionally apply a function
#'
#' @param cell_predicate an expression on the source data frame identifying which cells should be formatted.
#' @param ... dots.
#' @return format list
#' @examples


cells_format <- function(cell_predicate, ...){

  # browser()

  format_list <-
    list(list(cell_predicate = enquos(cell_predicate),func = "cells_format", format_list = list(formats = ...)))

  class(format_list) <- append("table_format_list",class(format_list))

  format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))


  names(format_list) <- format_list_name

  # format_list %>% str()

  format_list



}
