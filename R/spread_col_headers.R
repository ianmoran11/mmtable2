spread_col_headers <- function(data, ...){
  
  current_list <- list(...)
  
  with(current_list,
       {
         # create single top header column
         df <- data
         
         df <- df %>% unite(col = header_temp, !!!(col_header_vars),sep = "\n")
         
         # Get all unique header values
         header_temp_vals <- df$header_temp %>% unique()
         
         # Spread the headers
         df <- df %>% group_by(header_temp,!!!syms(row_header_vars)) %>% nest() %>%  spread(header_temp, data)
         
         # Unlist to get table values, and then unnest
         df <- df %>% ungroup() %>% mutate_at(.vars = vars(header_temp_vals), .funs = list(~ map(.x,unlist))) %>% unnest()
         
         df <- df %>% map_dfr(as.character)
         
         df2 <-  tibble(names = names(df), values = names(df)) %>% spread(names,values)
         
         df <- bind_rows(df2,df) %>% select(names(df)) %>% mutate_all(.funs = list(~ str_split(.x,"\n"))) %>%
           unnest()
         
         df
       })
}