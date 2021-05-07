#' Conditionally apply a function
#'
#' @param header the nme of a variable that is currently a header in the table
#' @param ... formating instructions
#' @return format list
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

#' Conditionally apply a function
#'
#' @param variable a column of the data frame from which header values will be constructed
#' @return format list
#' @export
add_header_format <- function(mmtable,...){
  `+`(mmtable, header_format(...))
}
