test_that("multiplication works", {

  local_edition(3)

  table <-
    gapminder_mm %>%
    # filter(var != "Life expectancy") %>%
    mmtable(table_data = value,use_defaul_formats = F) +
    header_top(year) +
    header_left(country) +
    header_top_left(var)  +
    header_left_top(continent)  +
    cells_format(cell_predicate = T, style = list(cell_text(align = "right",color = "black"))) +
    header_format(header = "all_rows", style = list(cell_text(color = "black"))) +
    cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
    header_format(header = year, style = list(cell_text(align = "right"))) +
    header_format(var, style = list(cell_text(weight = "bolder", align = "center"))) +
    header_format(country, style = list(cell_text(weight = "bolder"))) +
    header_format(continent, style = list(cell_text(weight = "bolder"))) +
    header_format(year, style = list(cell_text(weight = "bolder"))) +
    table_format(
      locations = cells_body(rows = c(3,5,7,9)),
      style = list(cell_borders(sides = c("top"),color = "grey"))) +
    NULL

  table <- apply_formats(table) %>% gt::as_raw_html()

  # testthat::snapshot_accept('test-formatting-spanshot-unmerged-cols')
  testthat::expect_snapshot(table)

})
