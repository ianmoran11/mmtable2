
#' Conditionally apply a function
#'
#' @param data a data frame
#' @param ... list of data to load into envrionment
#' @export
#' @return a data frame


spread_col_headers <- function(data, ...){

  current_list <- list(...)

  with(current_list,
       {
         # create single top header column

         # browser()

         df <- data


         #!#!#! converting to character here.
         df <- df %>% unite(col = header_temp, !!!(col_header_vars),sep = "\n")

         df <-df %>% mutate(header_temp = forcats::fct_relevel(header_temp, unique(df$header_temp)))

         # Get all unique header values
         header_temp_vals <- df$header_temp %>% unique()

         # browser()

         # Spread the headers
         df <-
           df %>% group_by(header_temp,!!!syms(row_header_vars)) %>% nest() %>%
           ungroup() %>%
           group_by(!!!syms(row_header_vars))  %>%
           mutate(len = map_int(data, nrow)) %>%
           mutate(rep = max(len)- len) %>%
           mutate(data = map2(data,rep,add_n_blanc_rows)) %>%
           select(-len, -rep)

         df <-
        df %>%
           spread(header_temp, data) %>%
          select(everything(), df$header_temp)

         # Unlist to get table values, and then unnest -----------------------------------------------
         withCallingHandlers(
           suppressWarnings(
             df <- df %>% ungroup() %>% mutate_at(.vars = vars(header_temp_vals), .funs = list(~ map(.x,unlist))) %>% unnest()),
           warning = function(w) {
            print("")
                                }
           )

         df <- df %>% purrr::map_dfr(as.character)

         df2 <-  tibble(names = names(df), values = names(df)) %>% spread(names,values)

         # bind_rows(df2,df) %>% select(names(df)) %>% mutate_all(.funs = list(~ str_split(.x,"\n"))) %>%
         #   unnest() %>% View


         #--------------------------------------------------------------------------------------------
         withCallingHandlers(
           suppressWarnings(
             df <-
               bind_rows(df2,df) %>% select(names(df)) %>% mutate_all(.funs = list(~ str_split(.x,"\n"))) %>%
               unnest() %>%
               dplyr::filter(
                 map_lgl(1:nrow(.),
                         function(x,y){
                           lgl_vec <-  y[x,] %>% unlist %>% any(!. %in% c("",NA))
                           if_else(condition = lgl_vec,true = T,false = F,missing = F)
                           },
                         y = .)
               )
             ),
           warning = function(w) {
             print("")
           }
         )

         df
       })
}
