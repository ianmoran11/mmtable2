#' Apply list of formating commands to a mmtable
#'
#' @param mmtable an mmtable
#' @return mmtable
#' @export
#' @importFrom magrittr %>%
#' @importFrom dplyr arrange
#' @importFrom dplyr first
#' @importFrom dplyr group_by
#' @importFrom gt gt
#' @importFrom purrr keep
#' @importFrom purrr map
#' @importFrom purrr map_chr
#' @importFrom purrr map_lgl
#' @importFrom dplyr mutate
#' @importFrom dplyr pull
#' @importFrom purrr reduce
#' @importFrom dplyr row_number
#' @importFrom dplyr rename
#' @importFrom purrr set_names
#' @importFrom stringr str_remove_all
#' @importFrom stringr str_replace_all
#' @importFrom dplyr summarise
#' @importFrom tibble tibble
#' @importFrom tidyr unnest

apply_formats <- function(mmtable){
  # browser()

# Formatting of mergeed headers ----------------------------------------------------------------------------------------
  if("merged_headers" %in% class(mmtable)){

    # browser()

    ## Get table attributes ------------------------------------------------------------------------
    non_empty_format_lists <- mmtable %>% attr("_table_format") %>% keep(!map_lgl(.,~ unlist(.) %>% is.null))
    row_header_df <- attributes(mmtable) %>% .[["_header_info"]] %>% .[["row_header_df"]]
    col_header_df <- attributes(mmtable) %>% .[["_header_info"]] %>% .[["col_header_df"]]
    mmtable_cells_rows <-  mmtable$`_data`[-c(1:nrow(col_header_df)),]

    ## Get derived information ---------------- ------------------------------------------------------------------------
    ### Col header order ---------------- ------------------------------------------------------------------------------
    col_header_df_01 <- col_header_df %>% mutate(row_no = row_number()) %>% arrange(-row_no)
    ### Col header names (non-repeated) -------------------------------------------------------------- -----------------
    name_vec <- get_row_header_names(mmtable$`_data`,col_header_df_01)
    ## Create base gt table  -------------------------------------------------------------------------------------------
    single_header_gt <- mmtable_cells_rows %>% set_names(name_vec) %>% gt()

    ### Transfer all atributes to new base table -----------------------------------------------------------------------
    attr(single_header_gt,"names") <- attr(mmtable,"names")
    attr(single_header_gt,"class") <- attr(mmtable,"class")
    attr(single_header_gt,"_original_data") <- attr(mmtable,"_original_data")
    attr(single_header_gt,"_header_info") <- attr(mmtable,"_header_info")
    attr(single_header_gt,"_table_meta") <- attr(mmtable,"_table_meta")
    attr(single_header_gt,"_table_format") <- attr(mmtable,"_table_format")

    ## Create dataframe that summarises formatting list
    formats_list_df <-
      tibble(non_empty_format_lists = non_empty_format_lists) %>%
      mutate(func = map_chr(non_empty_format_lists,"func")) %>%
      mutate(header = map_chr(non_empty_format_lists,function(x){ifelse(is.null(x$header),NA_character_,x$header)}))

    ## Create dataframe for basetable formatting
    column_header_table_with_funcs <-
      tibble(single_header_gt = list(single_header_gt)) %>%
      mutate(header = col_header_df$col_header_vars[nrow(col_header_df)]) %>%
      mutate(func = col_header_df$direction[nrow(col_header_df)]) %>%
      ### keep relevant foratting
      mutate(formats = map(header, function(header){
        formats_list_df %>%
          dplyr::filter(header %in% c(NA, "all_rows",header,row_header_df$row_header_vars )) %>%
                            dplyr::rename(format_header = header, format_func = func)
        }))  %>% unnest(formats)

    ## Apply formatting for first col  #!#!#!#! applying *all* formats to first header?

    format_list_for_header <- column_header_table_with_funcs %>%
      dplyr::filter(!format_header %in% c("all_rows",row_header_df$row_header_vars),!format_func %in% c("cells_format") ) %>%
      pull(non_empty_format_lists)

    format_list_for_table_cells_and_rows <- column_header_table_with_funcs %>%
      dplyr::filter(!format_header %in% c("all_cols",col_header_df$col_header_vars)) %>%
      pull(non_empty_format_lists)

    mmtable_return <-
    list(single_header_gt) %>% append(format_list_for_header) %>% reduce(style_first_col_header) %>%
                   list(.) %>% append(format_list_for_table_cells_and_rows) %>% reduce(apply_format)
    # Create base spanner tables --------------------------------------------------------------------------------------
    spanner_tables_gt <- map(1:(nrow(col_header_df) -1), spannerize, gm_table2= mmtable)

    # Create base spanner tables --------------------------------------------------------------------------------------
    spanner_tables_df <-
      tibble(spanner_tables_gt = spanner_tables_gt %>% map(list)) %>%
      mutate(header = col_header_df$col_header_vars[1:(nrow(col_header_df) -1)]) %>%
      mutate(func = col_header_df$direction[1:(nrow(col_header_df) -1)])

    spanners_with_funcs <-  spanner_tables_df %>%
      mutate(order= row_number()) %>%
      mutate(formats = map(header, function(header_span){
        formats_list_df %>%
          dplyr::filter(header %in% c(NA, "all_cols",header_span)) %>%
          rename(format_header = header, format_func = func)
        }
        )) %>% unnest(cols = c(spanner_tables_gt, formats))

    spanners_with_funcs_df <-
    spanners_with_funcs %>%
      dplyr::filter(format_header %in% c(header,"all_cols") | format_func %in% c("table_format")) %>%
      group_by(header) %>%
      summarise(
        order = first(order),
        spanner_tables_df = list(first(spanner_tables_gt)),
        format_lists = list(non_empty_format_lists)) %>%
      arrange(order)

    formatted_spanners_df <-
      1:nrow(spanners_with_funcs_df) %>%
      map(~ spanners_with_funcs_df %$% append(spanner_tables_df[.x], format_lists[[.x]]) %>% reduce(style_spanner) )

    #-------------------------------------------------------------------------------------------------------------------
    # browser()
    # gt:::as.tags.gt_tbl(mmtable_return) %>% toString() %>% cat
    table_html <-  gt:::as.tags.gt_tbl(mmtable_return) %>% toString() %>% xml2::read_xml(as_html = T)
    inserter <- formatted_spanners_df %>% map(get_spanner_html_text) %>% paste(collapse = "\n") %>% xml2::read_xml(as_html = T)

    xml2::xml_add_child(
      xml2::xml_find_first(table_html, '//*[contains(concat(" ", normalize-space(@class), " "), " gt_col_headings ")]'),
      inserter,
      .where = 0
    )

    # xml2::xml_remove(xml2::xml_find_first(table_html,"head"))



    html_text <-
      table_html %>%  as.character() %>%
      str_replace_all('_spanner"></span>','_spanner">&nbsp;</span>') %>%
      str_remove_all("\\[[0-9]+\\]") %>%
      str_split("\n") %>% .[[1]]  %>%  .[-c(1)] %>%
      keep(!str_detect(.,"^</html>")) %>%
      keep(!str_detect(.,"^</head>")) %>%
      str_remove_all("\\</body.+") %>%
      str_remove_all("\\<body\\>") %>%
      str_remove_all("^<html>") %>%
      # str_replace_all('"gt_table"\\>$','"gt_table">\n') %>%
      str_trim() %>% keep(nchar(.)>0)
      paste(collapse = "\n") %>%
      keep(nchar(.)!= 0 ) %>%
      htmltools::HTML()

  # htmltools::html_print(html_text)

#------EXPERIMENTAL--------------------------------------------------------------
    # Generate the HTML table
    # html_table <- render_as_html(data = x)
    # html_table <- html_text
    # Compile the SCSS as CSS
    # id <- "sldkfjhsdfou"
    # css <- gt:::compile_scss(data = mmtable_return, id =id)
    #
    # # Get options related to the enclosing <div>
    # container_overflow_x <- gt:::dt_options_get_value(mmtable_return, option = "container_overflow_x")
    # container_overflow_y <- gt:::dt_options_get_value(mmtable_return, option = "container_overflow_y")
    # container_width <- gt:::dt_options_get_value(mmtable_return, option = "container_width")
    # container_height <- gt:::dt_options_get_value(mmtable_return, option = "container_height")
    #
    # # Attach the dependency to the HTML table
    # html_tbl <-
    #   htmltools::tags$div(
    #     id = id,
    #     htmltools::tags$style(htmltools::HTML(css)),
    #     style = htmltools::css(
    #       `overflow-x` = container_overflow_x,
    #       `overflow-y` = container_overflow_y,
    #       width = container_width,
    #       height = container_height
    #     ),
    #     html_table
    #   )

#------------------------------------------------------------------------------
  attr(mmtable_return,"html") <- html_text



  return(mmtable_return)

  }

# Formatting of unmergeed headers ------------------------------------------------------------------
  if(!"merged_headers" %in% class(mmtable)){

  table_format_list <- mmtable %>% attr("_table_format")

  non_empty_format_lists <-   table_format_list %>% keep(!map_lgl(.,~ unlist(.) %>% is.null))

  mmtable_return <- append(list(mmtable), non_empty_format_lists) %>% reduce(apply_format)

  final_mmtable_return <-  mmtable_return %>% gt::tab_options(column_labels.hidden = T)

  html_text <-
    gt:::as.tags.gt_tbl(final_mmtable_return) %>%
    as.character() %>%
    str_split("\n") %>% .[[1]] %>%
    str_trim() %>% keep(nchar(.)>0) %>% paste(collapse = "\n") %>%
    htmltools::HTML()

  attr(final_mmtable_return,"html") <- html_text

  return(final_mmtable_return)
  }
}

