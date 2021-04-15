#' Conditionally apply a function
#'
#' @param df a data frame
#' @param var_char the column to be diagonalized
#' @return data frame
#' @examples


diagonalize <-  function(df,var_char){

  var <- sym(var_char)

  df %>%
    mutate(!!var := if_else(!!var == lag(!!var,1)," ",!!var,!!var))
}
