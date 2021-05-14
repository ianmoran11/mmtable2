#' Format the cells of a header.
#'
#' @param header the name of a variable that is currently a header in the table
#' @param ... a list of styles, with format required by gt::tab_style style argument. https://gt.rstudio.com/reference/tab_style.html
#' @return format list
#' @importFrom magrittr %>%
#' @export


header_format <- function(header, ...){

  # browser()

  header_chr <- as.character(substitute(header))

  format_list <-
    list(list(header = header_chr,func = "header_format", format_list = list(formats = ...)))

  class(format_list) <- append("table_format_list",class(format_list))

  format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))


  names(format_list) <- format_list_name

  # format_list %>% str()

  format_list



  }

#' Add formatting to a header
#'
#' @param mmtable an mmtable object
#' @param ... arguments for add_header_format
#' @return an mmtable
#' @export
#' @examples
#' \dontrun{
#'
#' library(tidyverse)
#'
#' gm_table_piped <-
#'   gapminder_mm %>%
#'   filter(var != "Life expectancy") %>%
#'   mmtable(table_data = value, use_defaul_formats = T) %>%
#'   add_header_top(year) %>%
#'   add_header_left(country) %>%
#'   add_header_top_left(var)  %>%
#'   add_header_left_top(continent)  %>%
#'   add_cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) %>%
#'   add_header_format(header = year, style = list(cell_text(align = "right"))) %>%
#'   add_header_format("all_cols", style = list(cell_text(weight = "bolder"))) %>%
#'   add_header_format("all_rows", style = list(cell_text(weight = "bolder"))) %>%
#'   add_table_format(
#'     locations = cells_body(rows = c(1,3,5,7,9,11)),
#'     style = list(cell_borders(sides = "top",color = "grey"))) %>%
#'   add_table_source_note(source_note = "Excerpt of the Gapminder dataset." )
#'
#' gm_table_piped
#' }
add_header_format <- function(mmtable,...){
  `+`(mmtable, header_format(...))
}
