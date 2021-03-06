
#' Sort and select columns
#'
#' @param data a data frame
#' @param ... list of data to load into envrionment
#' @export
#' @return mmtable

sort_and_select_columns <- function(data,...){

  current_list <- list(...)

  with(current_list,
       {
         data <- data %>% arrange(!!!syms(row_header_vars), !!!syms(col_header_vars))
         data <- data %>% select(!!!syms(row_header_vars), !!!(col_header_vars), !!!data_vars)

         data

         })
}
