table_constructor <-
  function(df,col_header_df, row_header_df,data_vars){

    # browser()
    original_data <- df

    col_header_vars <- col_header_df$col_header_vars
    row_header_vars <-  row_header_df$row_header_vars

    down_right_vars <- col_header_df %>% filter(direction =="top_left") %>% pull(col_header_vars)
    left_down_vars <- row_header_df %>% filter(direction =="left_top") %>% pull(row_header_vars)

    n_row_header_vars <- length(row_header_vars)
    n_col_header_vars <- length(col_header_vars)

    all_vars <- c(col_header_vars,row_header_vars,data_vars) %>% keep(!is.na(.))

    df <- df %>% select(!!!syms(all_vars))

    if(length(keep(row_header_vars,!is.na(row_header_vars))) >0){
      df %>% arrange(!!!syms(row_header_vars), !!!syms(col_header_vars))  -> df
      df %>% select(!!!syms(row_header_vars), !!!(col_header_vars), !!!data_vars) -> df
    }

    df %>% arrange(!!!row_header_vars, !!!col_header_vars,!!!data_vars) -> df


    if(length(keep(col_header_vars,!is.na(col_header_vars))) >0){

      df %>% unite(col = header_temp, !!!(col_header_vars),sep = "\n") -> df
      header_temp_vals <- df$header_temp %>% unique()
      df %>% group_by(header_temp,!!!syms(row_header_vars)) %>% nest() %>%  spread(header_temp, data) %>%
        ungroup() %>% mutate_at(.vars = vars(header_temp_vals), .funs = list(~ map(.x,unlist))) %>%
        unnest() -> df

    }

    df %>% arrange(!!!row_header_vars) -> df

    if(length(left_down_vars)> 0){
      append(list(df),left_down_vars)  %>% reduce(diagonalize) -> df
    }

    df %>% t() -> df
    df %>% as_tibble(rownames = "header_temp") -> df

    if(length(keep(col_header_vars,!is.na(col_header_vars))) >0){
      df %>% separate(header_temp, into = col_header_vars, sep = "\n") -> df
    }
    if(length(down_right_vars)> 0){
      append(list(df),down_right_vars)  %>% reduce(diagonalize) -> df

    }

    df %>% t() %>% as_tibble() -> df
    df %>% set_names(rep(" ",ncol(.))) -> df
    df %>% set_names(names(.) %>% accumulate(paste0)) -> df
    df %>% mutate_at(.vars = vars(0:n_row_header_vars), .funs = funs(ifelse(row_number() %in% c(0:n_col_header_vars)," ", .))) -> df

    final_cols <- names(df) %>% length()

    df %>% gt() %>% data_color(columns = c(1:final_cols),colors = "white") -> gtable

    # gtable <- append(list("_original_data" = df),gtable)
    # gtable <- append(list("_header_info" = list(col_header_df, row_header_df,data_vars)),gtable)

    attr(gtable, "_original_data") <- original_data
    attr(gtable, "_header_info") <-
      list(col_header_df = col_header_df, row_header_df = row_header_df,data_vars= data_vars)

    class(gtable) <- append("mmtable",class(gtable))

    gtable
    # mmtable <- c()

  }
