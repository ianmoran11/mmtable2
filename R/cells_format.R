cells_format <- function(mmtable, cell_predicate, ... ){

 # browser()


  head(gtcars, 8) %>%
    dplyr::select(model:trim, mpg_city = mpg_c, mpg_hwy = mpg_h) %>%
    gt(rowname_col = "model") %>%
    tab_style(
      style = list(cell_text(color = "red"),cell_fill(color = "black")),
      locations = cells_body(
        columns = vars(trim),
        rows = trim == "Base Convertible"
      )
    )
}
