#' Conditionally apply a function
#'
#' @param cell_predicate an expression on the source data frame identifying which cells should be formatted.
#' @param ... dots.
#' @return format list
#' @export
#' @examples
#' \dontrun{
#' gm_table_formatted <-
#'   gapminder_mm %>%
#'   filter(var != "Life expectancy") %>%
#'   mmtable(table_data = value) +
#'   header_top(year) +
#'   header_left(country) +
#'   header_top_left(var)  +
#'   header_left_top(continent)  +
#'   cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
#'   header_format(header = year, style = list(cell_text(align = "right"))) +
#'   header_format("all_cols", style = list(cell_text(weight = "bolder"))) +
#'   header_format("all_rows", style = list(cell_text(weight = "bolder"))) +
#'   table_format(
#'     locations = cells_body(rows = c(1,3,5,7,9,11)),
#'     style = list(cell_borders(sides = "top",color = "grey"))) +
#'   table_source_note(source_note = "Excerpt of the Gapminder data" )
#' }

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
#' Conditionally apply a function
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return format list
#' @export
add_cells_format <- function(mmtable,...){
  `+`(mmtable, cells_format(...))
}
