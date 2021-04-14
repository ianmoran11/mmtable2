table_format <- function(locations, ...){

  format_list <-
    list(list(locations = locations,func = "table_format", format_list = list(formats = ...)))

  class(format_list) <- append("table_format_list",class(format_list))

  format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))

  names(format_list) <- format_list_name

  format_list



}

