gapminder_eur <-
  gapminder::gapminder %>%
  filter(continent == "Europe") %>%
  mutate(continent = continent %>% as.character())  %>%
  mutate(country = country %>% as.character())

model_df_list <- map(unique(gapminder_eur$country),possibly(model_lexp,NA), data =gapminder_eur )


model_df <- map(list("New Zealand"),model_lexp, data = gapminder) %>% .[[1]]








model_df %>%
  mmtable(table_data = value,table_name = "New Zealand") +
  header_top(statistic) +
  header_top_left(term) +
  header_top_left(statistic_level)

table_list <-  model_df_list %>% map(table_model_wide)

table_list[[1]]
table_list[[1]] / table_list[[2]]
table_list %>% reduce(`/`)






























table1 <- map(list("New Zealand"),model_lexp, data = gapminder) %>% map(table_model) %>% .[[1]]
table1 %>% attributes()

table2 <- map(list("Australia"),model_lexp, data = gapminder) %>% map(table_model) %>% .[[1]]
table2 %>% attributes()

table3 <- map(list("Norway"),model_lexp, data = gapminder) %>% map(table_model) %>% .[[1]]
table3 %>% attributes()

table1 + table2
table1 + (table2 + table3)
(table1 + table2) + table3

table1 %>% attributes

(table1 / table2) / table3





map(list("New Zealand"),model_lexp, data = gapminder) %>% map(table_model) %>% map(attributes())
map(list("Australia"),model_lexp, data = gapminder) %>% map(table_model)

table_list <- map(list("Australia", "New Zealand", "Norway"),model_lexp, data = gapminder) %>% map(table_model)

table_c <- table_list[[1]] + table_list[[2]]

table_c  + table_list[[3]]



