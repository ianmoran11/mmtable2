rm(list = ls())
devtools::build()
devtools::install(".")
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




source("./methods/divide_mmtable.R")
source("./methods/multiply_mmtable_.R")
source("./methods/plus_mmtable_.R")
source("./methods/print_mmtable.R")

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

gapminder_mm <-
gapminder %>% mutate(country = as.character(country)) %>% filter(country %in% countries) %>%
  filter(year > 1990) %>%
  mutate(gdpPercap = round(gdpPercap/1000,3) %>% sprintf("%.1f", .)) %>%
  mutate(pop = round(pop/1000000,3) %>% sprintf("%.1f", .)) %>%
  mutate(lifeExp = round(lifeExp,3) %>% sprintf("%.1f", .)) %>%
  select(-lifeExp) %>%
  gather(var,value, -country, -continent, -year) %>%
  mutate(var = case_when(
    var =="lifeExp" ~ "Life expectancy",
    var == "gdpPercap" ~ "GDP",
    var == "pop" ~ "Population")
    )

table <-
gapminder_mm %>%
  mmtable(table_data = value) +
  header_top(year) +
  header_left(country) +
  header_top_left(var)  +
  header_left_top(continent)  +
  cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
  header_format(header = year, style = list(cell_text(align = "right"))) +
  header_format(var, style = list(cell_text(weight = "bolder"))) +
  header_format(country, style = list(cell_text(weight = "bolder"))) +
  header_format(continent, style = list(cell_text(weight = "bolder"))) +
  header_format(continent, style = list(cell_borders(sides = "top",color = "grey"))) +
  header_format(year, style = list(cell_text(weight = "bolder"))) +
  header_format(year, style = list(cell_borders(sides = "bottom",color = "grey"))) +
  NULL

apply_formats(table)

table_2 <-
table +
  table_format(
    locations = cells_body(rows = c(1,3,5,7,9,11)),
    style = list(cell_borders(sides = "top",color = "grey"))) +
  table_format(
    locations = cells_body(rows = c(1:12), columns = (1:10)),
    style = list(cell_text(size = px(12),  font = google_font("EB Garamond"))))

apply_formats(table_2)



?google_font()




