rm(list = ls())
devtools::build()
devtools::install(".")
renv::snapshot()
3
#----------------------------------------------------------------
install.packages("renv")
renv::restore()
library(tibble)
library(gt)
library(tidyverse)
library(mmtable2)

devtools::load_all()
usethis::use_testthat()


rm(list = ls())
devtools::build()
devtools::install(".")
library(mmtable2)
source("./methods/divide_mmtable.R")
source("./methods/multiply_mmtable_.R")
source("./methods/plus_mmtable_.R")
source("./methods/print_mmtable.R")
devtools::test()


student_df

stable <-
  student_df %>%
  mmtable(table_data = value,table_name = "Test")  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table <-
  stable +
  header_format(student, style = list(cell_text(weight = "bold"))) +
  header_format(student, style = list(cell_text(align =  "right"))) +
  header_format(subject, style = list(cell_text(weight = "bold"))) +
  cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
  table_format(locations = cells_body(rows = 1), style = list(cell_text(weight = "bold")))

apply_formats(table)


countries <-
gapminder %>% filter(year == max(year)) %>% arrange(-lifeExp) %>% group_by(continent) %>% top_n(2) %>%
  arrange(continent) %>% pull(country) %>% as.character()

usethis::use_data(gapminder_mm,overwrite = T)

gapminder_mm <-
gapminder %>% mutate(country = as.character(country)) %>% filter(country %in% countries) %>%
  filter(year > 1990) %>%
  mutate(gdpPercap = round(gdpPercap/1000,3) %>% sprintf("%.1f", .)) %>%
  mutate(pop = round(pop/1000000,3) %>% sprintf("%.1f", .)) %>%
  mutate(lifeExp = round(lifeExp,3) %>% sprintf("%.1f", .)) %>%
  # select(-lifeExp) %>%
  gather(var,value, -country, -continent, -year) %>%
  mutate(var = case_when(
    var =="lifeExp" ~ "Life expectancy",
    var == "gdpPercap" ~ "GDP",
    var == "pop" ~ "Population")
    )

devtools::load_all()

class(table)

devtools::test()
devtools::load_all()

table <-
gapminder_mm %>%
  filter(var != "Life expectancy") %>%
  mmtable(table_data = value) +
  header_top(year)  +
  header_top_left(var)

apply_formats(table)


table %>% attr("_table_format") %>% str


  header_left(country)) %>%  attributes() %>% str
  header_top_left(var)  +
  header_left_top(continent)  +
  table_format(locations = "all",style = list(cell_text(size = px(12)))) +
  header_format(header = "all_rows",style = list(cell_text(weight = "bold"))) +
  header_format(header = "all_cols",style = list(cell_text(weight = "bold", align = "right"))) +
    cells_format(cell_predicate = T,style = list(cell_text(align =  "right"))) +
  NULL

cells_format()

  cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
  header_format(header = "all_rows", style = list(cell_text(weight = "bold")))




  header_format(var, style = list(cell_text(weight = "bolder"))) +
  header_format(country, style = list(cell_text(weight = "bolder"))) +
  header_format(continent, style = list(cell_text(weight = "bolder"))) +
  header_format(continent, style = list(cell_borders(sides = "top",color = "grey"))) +
  header_format(year, style = list(cell_text(weight = "bolder"))) +
  header_format(year, style = list(cell_borders(sides = "bottom",color = "grey"))) +
  table_format(
    locations = cells_body(rows = c(1,3,5,7,9,11)),
    style = list(cell_borders(sides = "top",color = "grey"))) +
  table_format(
    locations = cells_body(rows = c(1:12), columns = (1:10)),
    style = list(cell_text(size = px(12),  font = google_font("EB Garamond"))))

apply_formats(table) %>% gt::tab_options(column_labels.hidden = T)
apply_formats(table_2)
devtools::test()


create_table <- function(df,name){

  df %>%
    mmtable(table_data = value,table_name = name) +
    header_top(year) +
    header_left(country) +
    header_top_left(var)  +
    header_left_top(continent)
}

gapminder_tbl <-
gapminder_mm %>%
  mutate(continent_n = continent, var_n = var) %>%
  group_by(continent_n,var_n) %>% nest() %>%
  mutate(name = paste(continent_n,var_n, sep =" - " )) %>%
  mutate(table =map2(data,name,create_table))
(a +  b)

a1 <-  a + NULL
a2 <-  NULL + a

all(a1$`_data` == a2$`_data`)

usethis::use_test(name = "Addition-of-tables-is-associative",open = T)
usethis::use_test(name = "Division-of-tables-is-associative",open = T)
usethis::use_test(name = "Multiplication-of-tables-is-associative",open = T)

usethis::use_test(name = "Addition-of-tables-has-an-identify",open = T)
usethis::use_test(name = "Division-of-tables-has-an-identity",open = T)
usethis::use_test(name = "Multiplication-of-tables-has-an-identity",open = T)



devtools::test()


c <- gapminder_tbl %>% filter(name == "Asia - Population") %>% pull(table) %>% .[[1]]
d <- gapminder_tbl %>% filter(name == "Asia - GDP") %>% pull(table) %>% .[[1]]


a + b

gapminder_tbl$table[[1]] / gapminder_tbl$table[[2]]


devtools::load_all()

table <-
  gapminder_mm %>%
  filter(var != "Life expectancy") %>%
  mmtable(table_data = value) +
  header_top(year) +
  header_left(country) +
  header_top_left(var)  +
  header_left_top(continent)

table + cells_format(cell_predicate = T, style = list(cell_text(align = "right")))

gm_table <- apply_formats(table)


  cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
  header_format(header = year, style = list(cell_text(align = "right"))) +
  header_format(var, style = list(cell_text(weight = "bolder"))) +
  header_format(country, style = list(cell_text(weight = "bolder"))) +
  header_format(continent, style = list(cell_text(weight = "bolder"))) +
  header_format(continent, style = list(cell_borders(sides = "top",color = "grey"))) +
  header_format(year, style = list(cell_text(weight = "bolder"))) +
  header_format(year, style = list(cell_borders(sides = "bottom",color = "grey"))) +
  table_format(
    locations = cells_body(rows = c(1,3,5,7,9,11)),
    style = list(cell_borders(sides = "top",color = "grey"))) +
  table_format(
    locations = cells_body(rows = c(1:12), columns = (1:10)),
    style = list(cell_text(size = px(12),  font = google_font("EB Garamond"))))

gm_table <- apply_formats(table)



devtools::load_all()


table1 <-
  gapminder_mm %>%
  filter(var != "Life expectancy") %>%
  mmtable(table_data = value) +
  header_top(year) +
  header_left(country) +
  header_top_left(var)  +
  header_left_top(continent)

devtools::load_all()

table2 <-
table1 +
  cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
  header_format(header = year, style = list(cell_text(align = "right"))) +
  header_format(var, style = list(cell_text(weight = "bolder"))) +
  header_format(country, style = list(cell_text(weight = "bolder"))) +
  header_format(continent, style = list(cell_text(weight = "bolder"))) +
  header_format(continent, style = list(cell_borders(sides = "top",color = "grey"))) +
  header_format(year, style = list(cell_text(weight = "bolder"))) +
  header_format(year, style = list(cell_borders(sides = "bottom",color = "grey"))) +
  table_format(
    locations = cells_body(rows = c(1,3,5,7,9,11)),
    style = list(cell_borders(sides = "top",color = "grey"))) +
  table_format(
    locations = cells_body(rows = c(1:12), columns = (1:10)),
    style = list(cell_text(size = px(12),  font = google_font("EB Garamond"))))

table2 %>% attr("_table_format")

table2 %>% attributes() %>% names()


table

gm_table <- apply_formats(table)

try(gm_table  %>% gtsave("gm_table.png"))
