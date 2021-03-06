#' Add a top header
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return an mmtable object
#' @export
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
#'   mmtable(cells = value) +
#'   header_top(year) +
#'   header_left(country) +
#'   header_top_left(var)  +
#'   header_left_top(continent)  +
#'   table_format(
#'     locations = row_list,
#'     style = style_list)
#' }
#' @importFrom magrittr %>%
#' @importFrom tibble tibble

header_top <- function(variable){

  # browser()
  var_chr <- substitute(variable) %>% as.character()

  gtable <- ls()

  attr(gtable, "_original_data") <- tibble()
  attr(gtable, "_header_info") <-
    list(
      col_header_df = tibble(col_header_vars = c(var_chr),direction = c("top")),
      row_header_df = tibble(row_header_vars = c(NA), direction = c(NA))
    )

  class(gtable) <- append("mmtable",class(gtable))
  class(gtable) <- append("mmtable_header",class(gtable))


  gtable


}




#' Add a top left header
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return an mmtable object
#' @export
#' @importFrom magrittr %>%
#' @importFrom tibble tibble
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
#'   mmtable(cells = value) +
#'   header_top(year) +
#'   header_left(country) +
#'   header_top_left(var)  +
#'   header_left_top(continent)  +
#'   table_format(
#'     locations = row_list,
#'     style = style_list)
#' }

header_top_left <- function(variable){
  var_chr <- substitute(variable) %>% as.character()

  gtable <- ls()

  attr(gtable, "_original_data") <- tibble()
  attr(gtable, "_header_info") <-
    list(
      col_header_df = tibble(col_header_vars = c(var_chr),direction = c("top_left")),
      row_header_df = tibble(row_header_vars = c(NA), direction = c(NA))
    )

  class(gtable) <- append("mmtable",class(gtable))
  class(gtable) <- append("mmtable_header",class(gtable))

  gtable



}

#' Add a left header
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return an mmtable object
#' @export
#' @importFrom magrittr %>%
#' @importFrom tibble tibble
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
#'   mmtable(cells = value) +
#'   header_top(year) +
#'   header_left(country) +
#'   header_top_left(var)  +
#'   header_left_top(continent)  +
#'   table_format(
#'     locations = row_list,
#'     style = style_list)
#' }

header_left <- function(variable){
  var_chr <- substitute(variable) %>% as.character()

  gtable <- ls()

  attr(gtable, "_original_data") <- tibble()
  attr(gtable, "_header_info") <-
    list(
      row_header_df = tibble(row_header_vars = c(var_chr),direction = c("left")),
      col_header_df = tibble(col_header_vars = c(NA), direction = c(NA))
    )
  class(gtable) <- append("mmtable",class(gtable))
  class(gtable) <- append("mmtable_header",class(gtable))

  gtable



}

#' Add a left top header
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return an mmtable object
#' @export
#' @importFrom magrittr %>%
#' @importFrom tibble tibble
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
#'   mmtable(cells = value) +
#'   header_top(year) +
#'   header_left(country) +
#'   header_top_left(var)  +
#'   header_left_top(continent)  +
#'   table_format(
#'     locations = row_list,
#'     style = style_list)
#' }


header_left_top <- function(variable){
  var_chr <- substitute(variable) %>% as.character()

  gtable <- ls()

  attr(gtable, "_original_data") <- tibble()
  attr(gtable, "_header_info") <-
    list(
      row_header_df = tibble(row_header_vars = c(var_chr),direction = c("left_top")),
      col_header_df = tibble(col_header_vars = c(NA), direction = c(NA))
    )
  class(gtable) <- append("mmtable",class(gtable))
  class(gtable) <- append("mmtable_header",class(gtable))

  gtable

}




#' Add a top header
#'
#' @param mmtable an mmtable object
#' @param ... arguments for header_top
#' @return an mmtable object
#' @importFrom magrittr %>%
#' @importFrom tibble tibble
#' @export
#' @examples
#' \dontrun{
#'
#' library(tidyverse)
#'
#' gm_table_piped <-
#'   gapminder_mm %>%
#'   filter(var != "Life expectancy") %>%
#'   mmtable(cells = value, use_defaul_formats = T) %>%
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

add_header_top <- function(mmtable, ...){
  `+`(mmtable, header_top(...))
}

#' Add a top left header
#'
#' @param mmtable an mmtable object
#' @param ... arguments for header_top_left
#' @return an mmtable object
#' @importFrom magrittr %>%
#' @importFrom tibble tibble
#' @export
#' @examples
#' \dontrun{
#'
#' library(tidyverse)
#'
#' gm_table_piped <-
#'   gapminder_mm %>%
#'   filter(var != "Life expectancy") %>%
#'   mmtable(cells = value, use_defaul_formats = T) %>%
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


add_header_top_left <- function(mmtable, ...){
  `+`(mmtable, header_top_left(...))
}

#' Add a left header
#'
#' @param mmtable an mmtable object
#' @param ... arguments for header_left
#' @return an mmtable object
#' @importFrom magrittr %>%
#' @importFrom tibble tibble
#' @export
#' @examples
#' \dontrun{
#'
#' library(tidyverse)
#'
#' gm_table_piped <-
#'   gapminder_mm %>%
#'   filter(var != "Life expectancy") %>%
#'   mmtable(cells = value, use_defaul_formats = T) %>%
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



add_header_left <- function(mmtable, ...){
  `+`(mmtable, header_left(...))
}


#' Add a left top header
#'
#' @param mmtable an mmtable object
#' @param ... arguments for header_left_top
#' @return an mmtable object
#' @export
#' @examples
#' \dontrun{
#'
#' library(tidyverse)
#'
#' gm_table_piped <-
#'   gapminder_mm %>%
#'   filter(var != "Life expectancy") %>%
#'   mmtable(cells = value, use_defaul_formats = T) %>%
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


add_header_left_top <- function(mmtable, ...){
  `+`(mmtable, header_left_top(...))
}
