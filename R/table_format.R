
#' Conditionally apply a function
#'
#' @param locations indicating which cells should be fomrated
#' @param ... formating instructions
#' @return format list
#' @export

table_format <- function(locations, ...){
# browser()
  format_list <-
    list(list(locations = locations,func = "table_format", format_list = list(formats = ...)))

  class(format_list) <- append("table_format_list",class(format_list))

  format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))

  names(format_list) <- format_list_name

  format_list



}

