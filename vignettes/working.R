# Load all packages
rm(list = ls())
library(tibble)
library(gt)
library(tidyverse)
devtools::load_all()
# library(mmtable2)
options(warn=-1)

list.files("methods/",full.names = T) %>% map(source)

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

# table1 <-
student_df %>%
  mmtable(table_data = value)  +
    header_top(student) +
    header_top_left(grade) +
    header_left(class) +
    header_left_top(subject)

table1            + table_title("Single Table")
table1 / table1.1 + table_title("Table Quotient")
table1 * table1.1 + table_title("Table Product")
table1 + table2   + table_title("Table Sum")

















