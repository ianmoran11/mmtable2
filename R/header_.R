#' Conditionally apply a function
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return format list
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
#'   mmtable(table_data = value) +
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




#' Conditionally apply a function
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return format list
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
#'   mmtable(table_data = value) +
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

#' Conditionally apply a function
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return format list
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
#'   mmtable(table_data = value) +
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

#' Conditionally apply a function
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return format list
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
#'   mmtable(table_data = value) +
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
#' @return an mmtable
#' @importFrom magrittr %>%
#' @importFrom tibble tibble
#' @export

add_header_top <- function(mmtable, ...){
  `+`(mmtable, header_top(...))
}

#' Add a top left header
#'
#' @param mmtable an mmtable object
#' @param ... arguments for header_top_left
#' @return an mmtable
#' @importFrom magrittr %>%
#' @importFrom tibble tibble
#' @export

add_header_top_left <- function(mmtable, ...){
  `+`(mmtable, header_top_left(...))
}

#' Add a left header
#'
#' @param mmtable an mmtable object
#' @param ... arguments for header_left
#' @return an mmtable
#' @importFrom magrittr %>%
#' @importFrom tibble tibble
#' @export


add_header_left <- function(mmtable, ...){
  `+`(mmtable, header_left(...))
}


#' Add a left top header
#'
#' @param mmtable an mmtable object
#' @param ... arguments for header_left_top
#' @return an mmtable
#' @export

add_header_left_top <- function(mmtable, ...){
  `+`(mmtable, header_left_top(...))
}
