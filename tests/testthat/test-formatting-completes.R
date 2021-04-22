test_that("multiplication works", {

  rm(list = ls())
  library(tidyverse)
  library(gt)
  library(xml2)
  devtools::load_all()

  library(gapminder)
  library(gt)
  library(dplyr)
  library(tidyr)
  library(purrr)
  library(stringr)

  table <-
    gapminder_mm %>%
    filter(var != "Life expectancy") %>%
    mmtable(table_data = value,use_defaul_formats = F) +
    header_top(year) +
    header_left(country) +
    header_top_left(var)  +
    header_left_top(continent)  +
    cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
    header_format(header = year, style = list(cell_text(align = "right"))) +
    header_format(var, style = list(cell_text(weight = "bolder", align = "center"))) +
    header_format(country, style = list(cell_text(weight = "bolder"))) +
    header_format(continent, style = list(cell_text(weight = "bolder"))) +
    header_format(year, style = list(cell_text(weight = "bolder"))) +
    # table_format(
    #   locations = cells_body(rows = c(1:2), columns = c(1:2)),
    #   style = list(cell_borders(sides = c("left","right","top","bottom"),color = NULL))) +
    NULL

  # t %>% write_lines("./vignettes/test.html")

   apply_formats(table)

  t <- apply_formats(table + header_merged_cols())




  expect_true(1 == 1)

})
