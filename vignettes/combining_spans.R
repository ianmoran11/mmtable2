
rm(list = ls())
devtools::document()
devtools::build()
devtools::install()
devtools::test()


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
  header_left(var) +
  header_top_left(country) +
  header_top_left(continent)

class(gm_table2) <- append(class(gm_table2),"merged_headers")

gm_formatted <- apply_formats(gm_table2)

# Add first row of column header


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


col_header_df <- attributes(gm_table2) %>% .[["_header_info"]] %>% .[["col_header_df"]]
col_header_df_01 <- col_header_df %>% mutate(row_no = row_number()) %>% arrange(-row_no)

df <- map(1:3, spannerize, gm_table2= gm_table2)

# table_list <- append(list(gm_table2),df)

table_html <-  gt:::as.tags.gt_tbl(gm_table2) %>% toString() %>% read_xml(as_html = T)
inserter <- df %>% map(get_spanner_html_text) %>% paste(collapse = "\n") %>% read_xml(as_html = T)

xml_add_child(
  xml_find_first(table_html, '//*[contains(concat(" ", normalize-space(@class), " "), " gt_col_headings ")]'),
  inserter,
  .where = 0
  )

table_html %>%  as.character() %>% htmltools::HTML() %>%  htmltools::html_print()

#---------------
