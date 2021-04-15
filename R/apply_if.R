#' Conditionally apply a function
#'
#' @param predicate a predicate
#' @param func a function to apply
#' @param data data used by the function or otherwise returned
#' @param ... other objects involved in evaluation of the function
#' @return data

apply_if <- function(predicate, func, data, ...){

  # browser()

  if(predicate){

  data <- func(data,...)
}
  data
}
