
rm(list = ls())
library(tidyverse)
library(gt)
library(xml2)
devtools::load_all()

row_list <- cells_body(rows = c(1,3,5,7,9,11))
style_list <- list(cell_borders(sides = "top",color = "grey"))
gm_df <- gapminder_mm %>% filter(var != "Life expectancy")

gm_table2 <-
  gm_df %>%
  mmtable(table_data = value) +
  header_top(year) +
  header_top_left(var) +
  header_top_left(country) +
  header_top_left(continent)

# Add first row of column header
get_row_header_names <- function(df){
    unlist(df[col_header_df_01[[1,"row_no"]],]) %>% tibble(var = .) %>%
    group_by(var) %>%
    mutate(row_no = row_number()) %>%
    mutate(namer = paste0(var,"[", row_no,"]")) %>% pull(namer)
}

# gt_01 <- gm_table2$`_data` %>% set_names(get_row_header_names(.)) %>%
#          filter(row_number() > nrow(col_header_df_01))  %>% gt()

# promote_first_col_header <-  function(gm_table2){
#
#   col_header_df <- attributes(gm_table2) %>% .[["_header_info"]] %>% .[["col_header_df"]]
#   col_header_df_01 <- col_header_df %>% mutate(row_no = row_number()) %>% arrange(-row_no)
#
#   name_vec <- get_row_header_names(gm_table2$`_data`)
#
#   gm_table2$`_data` %>% set_names(name_vec) %>% gt()
#
# }
#
# mm_table_original <-  promote_first_col_header(gm_table2)

  # %>% gt() %>%
  # tab_spanner(label = "PLACEHOLDER",columns = 1:ncol(gm_table2$`_data`))

#---------------------------------------------------------------------------------------------------
# 2nd header
set_class <- function(object, class){
  `<-`(class(object),class)
  object
}
add_spanner <- function(gm_table2,spanner_list){
  gm_table2 %>%
    tab_spanner(label = spanner_list[[1]],columns = spanner_list[[2]])
}
spannerize <- function(gm_table2,n){

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

col_header_df <- attributes(gm_table2) %>% .[["_header_info"]] %>% .[["col_header_df"]]
col_header_df_01 <- col_header_df %>% mutate(row_no = row_number()) %>% arrange(-row_no)

df <- map(1:3, spannerize, gm_table2= gm_table2)

table_list <- append(list(gm_table2),df)

table1 <- gm_table2$`_data`  %>% .[-c(1:4),] %>% gt()

table_html <-  table1 %>% gt:::as.tags.gt_tbl(gt_02) %>% toString() %>% read_xml(as_html = T)
continent_tr <-  table_list[[2]] %>% gt:::as.tags.gt_tbl(gt_02) %>% toString() %>% read_xml(as_html = T) %>% xml2::xml_find_all(xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "gt_col_headings", " " ))]') %>% xml2::xml_children() %>% .[[1]]
country_tr <- table_list[[3]] %>% gt:::as.tags.gt_tbl(gt_02) %>% toString() %>% read_xml(as_html = T) %>% xml2::xml_find_all(xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "gt_col_headings", " " ))]') %>% xml2::xml_children() %>% .[[1]]
measure_tr <- table_list[[4]] %>% gt:::as.tags.gt_tbl(gt_02) %>% toString() %>% read_xml(as_html = T) %>% xml2::xml_find_all(xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "gt_col_headings", " " ))]') %>% xml2::xml_children() %>% .[[1]]

inserter <-
paste(
  continent_tr %>% as.character(),
  country_tr %>% as.character(),
  measure_tr %>% as.character(),
  collapse =  "\n") %>% as.character() %>% read_xml(as_html = T)

with_continent <-
xml_add_child(
  xml_find_first(table_html, '//*[contains(concat(" ", normalize-space(@class), " "), " gt_col_headings ")]'),
  inserter,
  .where = 0
  )

table_html %>% as.character() %>% htmltools::HTML() %>%  htmltools::html_print()


