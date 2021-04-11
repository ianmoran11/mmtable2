diagonalize <-  function(df,var_char){

  var <- sym(var_char)

  df %>%
    mutate(!!var := if_else(!!var == lag(!!var,1)," ",!!var,!!var))
}
