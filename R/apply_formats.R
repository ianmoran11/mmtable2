#' Apply list of formating commands to a mmtable
#'
#' @param mmtable an mmtable
#' @return mmtable
#' @export

apply_formats <- function(mmtable){

  browser()

  # Plan
   #- create the table with row headers and single  column header
   #- Then crate a table for each spannner
   #- Transerfer spanners to main table


  if("merged_headers" %in% class(mmtable)){

    #- create the table with row headers and single  column header

    table_format_list <- mmtable %>% attr("_table_format")

    non_empty_format_lists <-   table_format_list %>% keep(!map_lgl(.,~ unlist(.) %>% is.null))

    mmtable_cells_rows <-  mmtable$`_data`[-c(1:    nrow(attr(mmtable,"_header_info")$col_header_df)),]

    col_header_df <- attributes(gm_table2) %>% .[["_header_info"]] %>% .[["col_header_df"]]
    col_header_df_01 <- col_header_df %>% mutate(row_no = row_number()) %>% arrange(-row_no)
    name_vec <- get_row_header_names(gm_table2$`_data`)
    single_header_gt <- mmtable_cells_rows %>% set_names(name_vec) %>% gt()
    #-----------------------------------------------------------------------------------------------

    #- Then crate a table for each spannner

    spanner_tables_gt <- map(1:(nrow(col_header_df) -1), spannerize, gm_table2= mmtable)

    tibble(non_empty_format_lists = non_empty_format_lists) %>%
      mutate(func = map_chr(non_empty_format_lists,"func")) %>%
      mutate(func = map_chr(non_empty_format_lists,
                            function(x){ifelse(is.null(x$header),NA_character_,x$header)}))


    # Apply styles to spanners and columns ---------------------------------------------------------
    bold_style <- list(cell_text(weight = "bolder"))

    spanner_tables_gt[[1]]    <-
    spanner_tables_gt[[1]] %>%
      tab_style(data = ., style = bold_style,locations =cells_column_spanners(spanners = everything()) )

    spanner_tables_gt[[1]] %>%
      tab_style(data = ., style = bold_style,locations =cells_column_labels(columns = everything()))



    class(spanner_tables_gt[[1]])

    #------------------------------------------------------------------------------------------------
    #- Transerfer spanners to main table

    table_html <-  gt:::as.tags.gt_tbl(single_header_gt) %>% toString() %>% read_xml(as_html = T)
    inserter <- spanner_tables_gt %>% map(get_spanner_html_text) %>% paste(collapse = "\n") %>% read_xml(as_html = T)

    xml_add_child(
      xml_find_first(table_html, '//*[contains(concat(" ", normalize-space(@class), " "), " gt_col_headings ")]'),
      inserter,
      .where = 0
    )

    table_html %>%  as.character() %>% str_remove_all("\\[[0-9]+\\]") %>% htmltools::HTML() %>%  htmltools::html_print()

    mmtable_return <- append(list(mmtable), non_empty_format_lists) %>% reduce(apply_format)

    append(list(mmtable), non_empty_format_lists) %>% reduce(apply_format)




    # mmtable$`_data`[mmtable$]





    mmtable_return
  }

  if(!"merged_headers" %in% class(mmtable)){

  table_format_list <- mmtable %>% attr("_table_format")

  non_empty_format_lists <-   table_format_list %>% keep(!map_lgl(.,~ unlist(.) %>% is.null))

  mmtable_return <- append(list(mmtable), non_empty_format_lists) %>% reduce(apply_format)

  mmtable_return
  }
}

