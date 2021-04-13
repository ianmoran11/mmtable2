rm(list = ls())
devtools::build()
devtools::install()
3

library(tibble)
library(gt)
library(tidyverse)
library(gapminder)
library(mmtable2)

source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/divide_mmtable.R")
source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/multiply_mmtable_.R")
source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/plus_mmtable_.R")
source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/print_mmtable.R")

gapminder_eur <-
  gapminder::gapminder %>%
  filter(continent == "Europe") %>%
  mutate(continent = continent %>% as.character())  %>%
  mutate(country = country %>% as.character())

model_df_list <- map(unique(gapminder_eur$country),possibly(model_lexp,NA), data =gapminder_eur )

model_df <- map(list("Australia"),model_lexp, data = gapminder) %>% .[[1]]

model_df %>%
  mmtable(table_data = value,table_name = "Australia") +
  header_top(statistic) +
  header_top_left(term) +
  header_top_left(statistic_level)

table_list <-  model_df_list[1:10] %>% map(table_model_wide)

one_table <-  table_list[[1]]
try(one_table  %>% gtsave("one_table.png"))

two_tables <- table_list[[1]] / table_list[[2]]
try(two_tables  %>% gtsave("two_tables.png"))

many_tables <- table_list %>% reduce(`/`)
try(many_tables  %>% gtsave("many_tables.png"))






























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



