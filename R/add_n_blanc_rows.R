

#' @importFrom magrittr %>%
#' @importFrom dplyr bind_rows
#' @importFrom purrr map
#' @importFrom dplyr mutate_all
#' @importFrom dplyr row_number

add_n_blanc_rows <- function(df,n){

  if(n ==0){
    return(df)
  }

  df_02 <- df %>% dplyr::filter(row_number() == 1) %>% mutate_all(.funs = list(~""))

  map(1:n,~ df_02) %>% bind_rows() %>% bind_rows(df)

}
