add_n_blanc_rows <- function(df,n){
  # n <- 3
  # df_01 <- df %>% group_by(header_temp,!!!syms(row_header_vars)) %>% nest() %>% pull(data) %>% .[[1]]

  if(n ==0){

    return(df)
  }

  df_02 <- df %>% dplyr::filter(row_number() == 1) %>% mutate_all(.funs = list(~""))

  map(1:n,~ df_02) %>% bind_rows() %>% bind_rows(df)

}
