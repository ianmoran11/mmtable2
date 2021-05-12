#' Apply formatting to a location
#'
#' @param mmtable an mmtable
#' @param loc a list containing a row and col items
#' @param format_list a list of formatting commands
#' @return format list
#' @export
#' @importFrom magrittr %>%
#' @importFrom gt cells_body
#' @importFrom purrr invoke


format_a_loc <- function(mmtable, loc,format_list){

  # browser()

  # print(loc)

  invoke_list <- list(data=mmtable,locations = cells_body(rows = loc[[1]], columns = loc[[2]])) %>% append(.,  format_list$format_list)

  table <- invoke(tab_style,.x =  invoke_list)

  # print(table)

  table

}
