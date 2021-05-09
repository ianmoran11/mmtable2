
#' Conditionally apply a function
#'
#' @param df a data frame
#' @param col_header_df col header information
#' @param row_header_df row header information
#' @param data_vars cell variable
#' @param table_name name of the table
#' @param table_format formatting o the table
#' @export
#' @importFrom magrittr %>%
#' @importFrom purrr accumulate
#' @importFrom tibble as_tibble
#' @importFrom gt data_color
#' @importFrom dplyr funs
#' @importFrom gt gt
#' @importFrom purrr keep
#' @importFrom dplyr mutate_at
#' @importFrom dplyr pull
#' @importFrom gt px
#' @importFrom purrr reduce
#' @importFrom dplyr row_number
#' @importFrom dplyr select
#' @importFrom purrr set_names
#' @importFrom rlang syms
#' @importFrom gt tab_options
#' @importFrom dplyr vars
#' @return mmtable


table_constructor <-
  function(df,col_header_df, row_header_df,data_vars,table_name = NULL, table_format){

    # browser()

    # Store origal data for passing on
    original_data <- df

    # Headers by type
    col_header_vars <- col_header_df$col_header_vars
    row_header_vars <- row_header_df$row_header_vars

    # Get diagonal headers
    down_right_vars <- col_header_df %>% dplyr::filter(direction =="top_left") %>% pull(col_header_vars)
    left_down_vars <- row_header_df %>% dplyr::filter(direction =="left_top") %>% pull(row_header_vars)

    # Get number of headers
    n_row_header_vars <- length(row_header_vars %>% keep(!is.na(.)))
    n_col_header_vars <- length(col_header_vars %>% keep(!is.na(.)))

    # Get all relevevant variables
    all_vars <- c(col_header_vars,row_header_vars,data_vars) %>% keep(!is.na(.))

    # Select for relevant variables
    df <- df %>% select(!!!syms(all_vars))

    # If there are row header vars, sort them
    df <- apply_if(
      func = sort_and_select_columns,
      predicate = length(keep(row_header_vars,!is.na(row_header_vars))) >0,
      data = df,row_header_vars = row_header_vars,col_header_vars = col_header_vars,data_vars = data_vars
    )

    df <- apply_if(
      func = spread_col_headers,
      predicate = length(keep(col_header_vars,!is.na(col_header_vars))) >0,
      data = df,row_header_vars = row_header_vars,col_header_vars = col_header_vars,data_vars = data_vars
    )


    #  Diagnolise row headers

    if(length(left_down_vars)> 0){
      df <- append(list(df),left_down_vars)  %>% reduce(diagonalize)
    }
    #  Diagnolise col headers
    if(length(down_right_vars)> 0){
      diagonalized_rows <- which(col_header_vars %in% down_right_vars) %>% paste0("V",.)
      df <-   t(df) %>% as_tibble() %>% list(.) %>% append(.,diagonalized_rows) %>% reduce(diagonalize) %>% t() %>% as_tibble()
    }

    # Remove column names
    df <- df %>% set_names(rep(" ",ncol(.)))
    df <- df %>% set_names(names(.) %>% accumulate(paste0))
# browser()
    # Remove stubs
    df <- df %>% mutate_at(.vars = vars(0:n_row_header_vars), .funs = funs(ifelse(row_number() %in% c(0:n_col_header_vars),"", .)))

    # Get numbers of columns in the final data frame
    final_cols <- names(df) %>% length()

    # browser()

    df <-  df %>% purrr::map_dfr(~ ifelse(is.na(.x)," ",.x))

    # Convert to gtable and set colors
    gtable <- df %>% gt() %>% data_color(columns = c(1:final_cols),colors = "white") %>%  tab_options(table.font.size = px(12))

    # Set attributes
    attr(gtable, "_original_data") <- original_data
    attr(gtable, "_header_info") <-
      list(col_header_df = col_header_df, row_header_df = row_header_df,data_vars= data_vars)

    attr(gtable, "_table_meta") <-list(table_name = table_name)
    attr(gtable, "_table_format") <- table_format


    # Set class
    class(gtable) <- append("mmtable",class(gtable))

    gtable
    # mmtable <- c()

  }
