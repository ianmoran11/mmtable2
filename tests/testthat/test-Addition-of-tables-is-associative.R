test_that("multiplication works", {


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
    filter(name %in% c( "Oceania - Population","Oceania - GDP","Oceania - Life expectancy")) %>%
    mutate(table =map2(data,name,create_table))

  a <- gapminder_tbl %>% filter(name == "Oceania - Population") %>% pull(table) %>% .[[1]]
  b <- gapminder_tbl %>% filter(name == "Oceania - GDP") %>% pull(table) %>% .[[1]]
  c <- gapminder_tbl %>% filter(name == "Oceania - Life expectancy") %>% pull(table) %>% .[[1]]

  a1 <- (a +  b) + c
  a2 <-  a + (b  + c)

  expect_true(
    all(a1$`_data` == a2$`_data`)
  )
})
