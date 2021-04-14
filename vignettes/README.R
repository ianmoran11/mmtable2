rm(list = ls())
devtools::build()
devtools::install(".")
3

library(tibble)
library(gt)
library(tidyverse)
library(gapminder)
library(mmtable2)
library(webshot)

source("./methods/divide_mmtable.R")
source("./methods/multiply_mmtable_.R")
source("./methods/plus_mmtable_.R")
source("./methods/print_mmtable.R")

# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/divide_mmtable.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/multiply_mmtable_.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/plus_mmtable_.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/print_mmtable.R")

student_df

table1 <-
  student_df %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table1.1 <-
  student_df_1 %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table2 <-
  student_df_2 %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)


single_table <- table1 +  table_title("Single Table")

quotient_table <- table1 / table1.1  +  table_title("Table Quotient")

product_table <- table1 * table1.1  +  table_title("Table Product")

sum_table <- table1 + table2    +  table_title("Table Sum")

gapminder_eur <-
  gapminder::gapminder %>%
  filter(continent == "Europe") %>%
  mutate(continent = continent %>% as.character())  %>%
  mutate(country = country %>% as.character())

model_df_list <- map(unique(gapminder_eur$country),possibly(model_lexp,NA), data =gapminder_eur )

model_df <- map(list("Australia"),model_lexp, data = gapminder) %>% .[[1]]
table_list <-  model_df_list[1:10] %>% map(table_model_wide)

demo_table <-
model_df %>%
  mmtable(table_data = value,table_name = "Australia") +
  header_top(statistic) +
  header_top_left(term) +
  header_top_left(statistic_level)

one_table <-  table_list[[1]]

two_tables <- table_list[[1]] / table_list[[2]]

many_tables <- table_list %>% reduce(`/`)

