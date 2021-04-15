#' Conditionally apply a function
#'
#' @param n number of ids
#' @param length length of id
#' @return format list

gen_random_ids <- function(n,length){

#  n = 10
# lenght = 5

  map_chr(1:n, function(x,length) sample(LETTERS,size = length) %>% paste(collapse = ""),length  = length)


}
