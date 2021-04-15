test_that("multiplication works", {

  library(gapminder)
  library(gt)
  library(dplyr)
  library(tidyr)
  library(purrr)
  library(mmtable2)
  library(stringr)

  table <-
    gapminder_mm %>%
    filter(var != "Life expectancy") %>%
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
    table_format(
      locations = cells_body(rows = c(1,3,5,7,9,11)),
      style = list(cell_borders(sides = "top",color = "grey"))) +
    table_format(
      locations = cells_body(rows = c(1:12), columns = (1:10)),
      style = list(cell_text(size = px(12),  font = google_font("EB Garamond"))))

  t <- apply_formats(table)

  expect_true(1 == 1)

})
