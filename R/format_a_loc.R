#' Conditionally apply a function
#'
#' @param mmtable an mmtable
#' @param loc a list containing a row and col items
#' @param format_list a list of formatting commands
#' @return format list


format_a_loc <- function(mmtable, loc,format_list){

  # browser()

  invoke_list <- list(data=mmtable,locations = cells_body(row = loc[[1]], columns = loc[[2]])) %>% append(.,  format_list$format_list)

  invoke(tab_style,.x =  invoke_list)

}
