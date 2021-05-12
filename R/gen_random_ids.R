#' Generate a random string
#'
#' @param n number of ids
#' @param length length of id
#' @return format list
#' @export
#' @importFrom purrr map_chr

gen_random_ids <- function(n,length){

#  n = 10
# lenght = 5

  map_chr(1:n, function(x,length) sample(LETTERS,size = length) %>% paste(collapse = ""),length  = length)


}
