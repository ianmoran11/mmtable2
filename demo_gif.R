
 gm_df %>%
  mmtable(cells = value) +
  header_top(year) +
  header_top_left(var)  +
  header_left(country) +
  header_left_top(continent)  +
  header_format(
      continent, scope = "table",
      style = style_list
      )



























gm_df <- gapminder_mm %>% filter(var != "Life expectancy")

style_list <- list(
    cell_borders(sides = "top",color = "grey")
    )