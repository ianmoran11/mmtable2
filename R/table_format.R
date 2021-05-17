
#' Format a mmtable object.
#'
#'
#' @param locations indicating which cells should be formatted.
#' @param ... formating instructions
#' @return format list
#' @export
#' @importFrom magrittr %>%
#' @examples
#' \dontrun{
#'
#' library(tidyverse)
#'
#' row_list <- cells_body(rows = c(1,3,5,7,9,11))
#' style_list <- list(cell_borders(sides = "top",color = "grey"))
#' gm_df <- gapminder_mm %>% dplyr::filter(var != "Life expectancy")
#'
#' gm_table <-
#'   gm_df %>%
#'   mmtable(table_data = value) +
#'   header_top(year) +
#'   header_left(country) +
#'   header_top_left(var)  +
#'   header_left_top(continent)  +
#'   table_format(
#'     locations = row_list,
#'     style = style_list)
#' }


table_format <- function(locations, ...){
# browser()
  format_list <-
    list(list(locations = locations,func = "table_format", format_list = list(formats = ...)))

  class(format_list) <- append("table_format_list",class(format_list))

  format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))

  names(format_list) <- format_list_name

  format_list



}


#' Add formatting to a table
#'
#' @param mmtable an mmtable object
#' @param ... arguments for table_format
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

add_table_format <- function(mmtable,...){
    `+`(mmtable, table_format(...))
  }
