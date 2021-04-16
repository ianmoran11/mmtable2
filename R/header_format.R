
#' Conditionally apply a function
#'
#' @param header the nme of a variable that is currently a header in the table
#' @param ... formating instructions
#' @return format list
#' @export
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
#'   table_source_note(source_note = "Excerpt of the Gapminder data on life expectancy, GDP per capita, and population by country." )
#' }

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

