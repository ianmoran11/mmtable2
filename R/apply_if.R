apply_if <- function(predicate, func, data, ...){
  # browser()

  if(predicate){

  data <- func(data,...)
}
  data
}
