test_that("multiplication works", {

  library(gapminder)
  library(gt)
  library(dplyr)
  library(tidyr)
  library(purrr)
  library(mmtable2)
  library(stringr)

  create_table <- function(df,name){

    df %>%
      mmtable(cells = value,table_name = name) +
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

  a1 <-  a + NULL
  a2 <-  NULL + a

  expect_true(
    all(a1$`_data` == a2$`_data`)
  )

})
