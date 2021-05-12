#' Set the class of an object
#'
#' @param object a object
#' @param class new class of object
#' @export
#' @return mmtable

set_class <- function(object, class){
  `<-`(class(object),class)
  object
}
#' Add a spanner to a table
#'
#' @param gm_table2 a mmtable
#' @param spanner_list a list of spannner calls
#' @export
#' @return mmtable
#' @importFrom magrittr %>%

add_spanner <- function(gm_table2,spanner_list){
  gm_table2 %>%
    tab_spanner(label = spanner_list[[1]],columns = spanner_list[[2]])
}

#' Convert header to spanner
#'
#' @param gm_table2 a mmtable
#' @param n number of spanners
#' @export
#' @return mmtable
#' @importFrom magrittr %>%

#' @importFrom magrittr %>%
#' @importFrom tibble as_tibble
#' @importFrom dplyr group_by
#' @importFrom purrr map2
#' @importFrom dplyr mutate
#' @importFrom dplyr mutate_all
#' @importFrom dplyr pull
#' @importFrom purrr reduce
#' @importFrom dplyr row_number
#' @importFrom dplyr summarise
#' @importFrom rlang syms

spannerize <- function(gm_table2,n){

  # browser()
  df1  <-
    gm_table2$`_data`[1:n,] %>% t(.) %>% as_tibble() %>%
    mutate_all(.funs = list(~ if_else(. == " ", NA_character_, .,.))) %>%
    mutate_all(.funs = list(~zoo::na.locf(.)))

  vars_syms <- names(df1) %>% syms()

  df2 <-
    df1 %>%
    mutate(column_index = row_number()) %>%
    group_by(!!!vars_syms) %>%
    summarise(column_index = list(column_index))


  spanner_reduce <- list(gm_table2) %>% append(map2(.x = df2[,n] %>% pull(1), .y =  df2[,"column_index"] %>% pull(1),.f =  ~ list(.x,.y)))

  table_with_spanners <- spanner_reduce %>% reduce(add_spanner)

  table_with_spanners
}

#' Get the html associated with a spanner
#'
#' @param gm_table2 an mmtable
#' @export
#' @return html
#' @importFrom magrittr %>%

get_spanner_html_text <- function(table){
  table %>% gt:::as.tags.gt_tbl(gt_02) %>% toString() %>% xml2::read_xml(as_html = T) %>%

    xml2::xml_find_all(xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "gt_col_headings", " " ))]') %>%
    xml2::xml_children() %>% .[[1]] %>% as.character()
}
