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
    name_vec <- get_row_header_names(gm_table2$`_data`,col_header_df_01)
    single_header_gt <- mmtable_cells_rows %>% set_names(name_vec) %>% gt()
    #-----------------------------------------------------------------------------------------------

    formats_list_df <-
      tibble(non_empty_format_lists = non_empty_format_lists) %>%
      mutate(func = map_chr(non_empty_format_lists,"func")) %>%
      mutate(header = map_chr(non_empty_format_lists,
                              function(x){ifelse(is.null(x$header),NA_character_,x$header)}))

    single_header_gt

    column_header_table_df <-
      tibble(single_header_gt = list(single_header_gt)) %>%
      mutate(header = col_header_df$col_header_vars[nrow(col_header_df)]) %>%
      mutate(func = col_header_df$direction[nrow(col_header_df)])

    column_header_table_with_funcs <-
      column_header_table_df %>%
      mutate(formats = map(header, function(header_span){
        formats_list_df %>% filter(header %in% c(NA, "all_rows",header_span))
      }
      ))

    formatted_column_header_table <-
      column_header_table_with_funcs %>%
      mutate(new_tables = map2(single_header_gt, formats,
                               function(spanner_table,formats){
                                 append(list(spanner_table),formats$non_empty_format_lists) %>%
                                   reduce(
                                     function(table,format){
                                       tab_style(data = table,
                                                 style = format$format_list[[1]],
                                                 locations =cells_column_labels(columns = everything()))
                                     }
                                   )
                               }
      )
      )

      mmtable_return <-
        append(formatted_column_header_table$new_tables[1],
               formatted_column_header_table$formats[[1]]$non_empty_format_lists) %>%
        reduce(apply_format)

    mmtable_return








    #- Then crate a table for each spannner

    spanner_tables_gt <- map(1:(nrow(col_header_df) -1), spannerize, gm_table2= mmtable)

    spanner_tables_df <-
      tibble(spanner_tables_gt = spanner_tables_gt) %>%
      mutate(header = col_header_df$col_header_vars[1:(nrow(col_header_df) -1)]) %>%
      mutate(func = col_header_df$direction[1:(nrow(col_header_df) -1)])


    spanners_with_funcs <-
    spanner_tables_df %>%
      mutate(formats = map(header, function(header_span){
        formats_list_df %>% filter(header %in% c(NA, "all_cols",header_span))
        }
        ))

    formatted_spanners_df <-
        spanners_with_funcs %>%
          mutate(new_tables = map2(spanner_tables_gt, formats,
                  function(spanner_table,formats){
                    append(list(spanner_table),formats$non_empty_format_lists) %>%
                      reduce(
                        function(table,format){
                          tab_style(data = table,
                                    style = format$format_list[[1]],
                                    locations =cells_column_spanners(spanners = everything()))
                          }
                       )
                    }
                  )
                 )


    # Apply styles to spanners and columns ---------------------------------------------------------


    # spanner_tables_gt[[1]] %>%
    #   tab_style(data = ., style = bold_style,locations =cells_column_labels(columns = everything()))

    #------------------------------------------------------------------------------------------------
    #- Transerfer spanners to main table

    table_html <-  gt:::as.tags.gt_tbl(single_header_gt) %>% toString() %>% read_xml(as_html = T)
    inserter <- formatted_spanners_df$new_tables %>% map(get_spanner_html_text) %>% paste(collapse = "\n") %>% read_xml(as_html = T)

    xml_add_child(
      xml_find_first(table_html, '//*[contains(concat(" ", normalize-space(@class), " "), " gt_col_headings ")]'),
      inserter,
      .where = 0
    )

    html_text <- table_html %>%  as.character() %>% str_remove_all("\\[[0-9]+\\]") %>% htmltools::HTML()

    htmltools::html_print(html_text)

    return(html_text)





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

