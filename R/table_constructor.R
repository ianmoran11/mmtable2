table_constructor <-
  function(df,col_header_df, row_header_df,data_vars){

    # browser()

    # Store origal data for passing on
    original_data <- df

    # Headers by type
    col_header_vars <- col_header_df$col_header_vars
    row_header_vars <-  row_header_df$row_header_vars

    # Get diagonal headers
    down_right_vars <- col_header_df %>% filter(direction =="top_left") %>% pull(col_header_vars)
    left_down_vars <- row_header_df %>% filter(direction =="left_top") %>% pull(row_header_vars)

    # Get number of headers
    n_row_header_vars <- length(row_header_vars)
    n_col_header_vars <- length(col_header_vars)

    # Get all relevevant variables
    all_vars <- c(col_header_vars,row_header_vars,data_vars) %>% keep(!is.na(.))

    # Select for relevant variables
    df <- df %>% select(!!!syms(all_vars))

    # If there are row header vars, sort them
    if(length(keep(row_header_vars,!is.na(row_header_vars))) >0){
      df <- df %>% arrange(!!!syms(row_header_vars), !!!syms(col_header_vars))
      df <- df %>% select(!!!syms(row_header_vars), !!!(col_header_vars), !!!data_vars)
    }


    if(length(keep(col_header_vars,!is.na(col_header_vars))) >0){

     # create single top header column
     df <- df %>% unite(col = header_temp, !!!(col_header_vars),sep = "\n")

     # Get all unique header values
     header_temp_vals <- df$header_temp %>% unique()

     # Spread the headers
     df <- df %>% group_by(header_temp,!!!syms(row_header_vars)) %>% nest() %>%  spread(header_temp, data)

     # Unlist to get table values, and then unnest
     df <- df %>% ungroup() %>% mutate_at(.vars = vars(header_temp_vals), .funs = list(~ map(.x,unlist))) %>% unnest()
    }

    # Sort column order
    df <- df %>% arrange(!!!row_header_vars)

    if(length(left_down_vars)> 0){
      append(list(df),left_down_vars)  %>% reduce(diagonalize) -> df
    }

    # Re-orient table
    df <- df %>% t()

    # Convert table back to tibble
    df <- df %>% as_tibble(rownames = "header_temp")

    # Separate row header united var
    if(length(keep(col_header_vars,!is.na(col_header_vars))) >0){
    df <-   df %>% separate(header_temp, into = col_header_vars, sep = "\n")
    }

    #  Diagnolise row headers
    if(length(down_right_vars)> 0){
    df <- append(list(df),down_right_vars)  %>% reduce(diagonalize)
    }

    # Reorient data frame
   df <- df %>% t() %>% as_tibble()

   # Remove column names
   df <- df %>% set_names(rep(" ",ncol(.)))
   df <- df %>% set_names(names(.) %>% accumulate(paste0))

   # Remove stubs
   df <- df %>% mutate_at(.vars = vars(0:n_row_header_vars), .funs = funs(ifelse(row_number() %in% c(0:n_col_header_vars)," ", .)))

   # Get numbers of columns in the final data frame
   final_cols <- names(df) %>% length()

   # Convert to gtable and set colors
   gtable <- df %>% gt() %>% data_color(columns = c(1:final_cols),colors = "white")

   # Set attributes
   attr(gtable, "_original_data") <- original_data
   attr(gtable, "_header_info") <-
      list(col_header_df = col_header_df, row_header_df = row_header_df,data_vars= data_vars)

   # Set class
   class(gtable) <- append("mmtable",class(gtable))

   gtable
    # mmtable <- c()

  }
