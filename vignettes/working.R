# Load all packages
rm(list = ls())
library(tibble)
library(gt)
library(tidyverse)
devtools::load_all()
# library(mmtable2)

list.files("R",full.names = T) %>% map(source)

usethis::use_github()

student_df %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table1             +  table_title("Single Table")
table1 / table1    +  table_title("Table Quotient")
table1 + table1    +  table_title("Table Sum")
table1 * table1    +  table_title("Table Product")

