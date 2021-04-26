test_that("multiplication works", {

  local_edition(3)
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
    dplyr::mutate(continent_n = continent, var_n = var) %>%
    dplyr::group_by(continent_n,var_n) %>% tidyr::nest() %>%
    dplyr::mutate(name = paste(continent_n,var_n, sep =" - " )) %>%
    dplyr::filter(name %in% c( "Oceania - Population","Oceania - GDP","Oceania - Life expectancy")) %>%
    dplyr::mutate(table =purrr::map2(data,name,create_table))

  a <- gapminder_tbl %>% dplyr::filter(name == "Oceania - Population") %>% dplyr::pull(table) %>% .[[1]]
  b <- gapminder_tbl %>% dplyr::filter(name == "Oceania - GDP") %>% dplyr::pull(table) %>% .[[1]]

  # testthat::snapshot_accept('test-table-layout-snapshot.R')
  # expect_snapshot(a$`_data`)


}
)
