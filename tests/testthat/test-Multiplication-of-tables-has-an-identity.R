test_that("multiplication works", {
  gapminder_tbl <-
    gapminder_mm %>%
    mutate(continent_n = continent, var_n = var) %>%
    group_by(continent_n,var_n) %>% nest() %>%
    mutate(name = paste(continent_n,var_n, sep =" - " )) %>%
    mutate(table =map2(data,name,create_table))

  a <- gapminder_tbl %>% filter(name == "Oceania - Population") %>% pull(table) %>% .[[1]]
  b <- gapminder_tbl %>% filter(name == "Oceania - GDP") %>% pull(table) %>% .[[1]]

  a1 <-  a * NULL
  a2 <-  NULL * a

  expect_true(
    all(a1$`_data` == a2$`_data`)
  )

})
