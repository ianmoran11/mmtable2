#' Conditionally apply a function
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return format list
#' @export

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
