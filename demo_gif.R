
row_list <- cells_body(rows = c(3,7))
col_list <- cells_body(columns = c(3,5,7,9,11))
style_list2<- list(cell_borders(sides = "left",color = "grey"))
gm_df <- gapminder_mm %>% filter(var != "Life expectancy")
style_list3 = list(cell_text(align = "left"))

style_list <- list(
    cell_borders(sides = "top",color = "grey")
    )

gm_table <- 
 gm_df %>% 
  mmtable(cells = value) +
  header_top(year) +
  header_top_left(var)  +
  header_left(country) +
  header_left_top(continent)  +
  header_format(continent, scope = "table",style = style_list)


gm_table 