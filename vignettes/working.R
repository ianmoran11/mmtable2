# Load all packages
library(tibble)
library(gt)
library(tidyverse)
devtools::load_all()
# library(mmtable2)

student_df <- tribble(
  ~subject, ~class, ~student, ~value, ~grade,
  "Humanities","Classics","Matilda",1,"Grade 1",
  "Humanities","History","Matilda",3,"Grade 1",
  "Performance","Music","Matilda",5,"Grade 1",
  "Performance","Drama","Matilda",7,"Grade 1",
  "Humanities","Classics","Olivia",2,"Grade 1",
  "Humanities","History","Olivia",4,"Grade 1",
  "Performance","Music","Olivia",6,"Grade 1",
  "Performance","Drama","Olivia",8,"Grade 1",
  "Humanities","Classics","Nicholas",3,"Grade 2",
  "Humanities","History","Nicholas",5,"Grade 2",
  "Performance","Music","Nicholas",9,"Grade 2",
  "Performance","Drama","Nicholas",12,"Grade 2",
  "Humanities","Classics","Paul",0,"Grade 2",
  "Humanities","History","Paul",1,"Grade 2",
  "Performance","Music","Paul",2,"Grade 2",
  "Performance","Drama","Paul",3,"Grade 2")

student_df_1 <- tribble(
  ~subject, ~class, ~student, ~value, ~grade,
  "Humanities","Classics","Matilda",1,"Grade 1",
  "Humanities","History","Matilda",3,"Grade 1",
  "Performance","Music","Matilda",5,"Grade 1",
  "Performance","Drama","Matilda",7,"Grade 1",
  "Humanities","Classics","Olivia",2,"Grade 1",
  "Humanities","History","Olivia",4,"Grade 1",
  "Performance","Music","Olivia",6,"Grade 1",
  "Performance","Drama","Olivia",8,"Grade 1",
  "Humanities","Classics","Nicholas",3,"Grade 2",
  "Humanities","History","Nicholas",5,"Grade 2",
  "Performance","Music","Nicholas",9,"Grade 2",
  "Performance","Drama","Nicholas",12,"Grade 2",
  "Humanities","Classics","Paul",0,"Grade 2",
  "Humanities","History","Paul",1,"Grade 2",
  "Performance","Music","Paul",2,"Grade 2",
  "Performance","Drama","Paul",3,"Grade 2")

student_df_1 <- tribble(
  ~subject, ~class, ~student, ~value, ~grade,
  "Humanities","Classics","Matilda",5,"Grade 1",
  "Humanities","History","Matilda",6,"Grade 1",
  "Performance","Music","Matilda",6,"Grade 1",
  "Performance","Drama","Matilda",2,"Grade 1",
  "Humanities","Classics","Olivia",4,"Grade 1",
  "Humanities","History","Olivia",6,"Grade 1",
  "Performance","Music","Olivia",3,"Grade 1",
  "Performance","Drama","Olivia",2,"Grade 1",
  "Humanities","Classics","Nicholas",6,"Grade 2",
  "Humanities","History","Nicholas",3,"Grade 2",
  "Performance","Music","Nicholas",1,"Grade 2",
  "Performance","Drama","Nicholas",6,"Grade 2",
  "Humanities","Classics","Paul",3,"Grade 2",
  "Humanities","History","Paul",8,"Grade 2",
  "Performance","Music","Paul",1,"Grade 2",
  "Performance","Drama","Paul",5,"Grade 2")

student_df_3 <- tribble(
  ~subject, ~class, ~student, ~value, ~grade,
  "Humanities","Classics","Matilda",5, "Grade 3",
  "Humanities","History","Matilda",6,  "Grade 3",
  "Performance","Music","Matilda",6,   "Grade 3",
  "Performance","Drama","Matilda",2,   "Grade 3",
  "Humanities","Classics","Olivia",4,  "Grade 3",
  "Humanities","History","Olivia",6,   "Grade 3",
  "Performance","Music","Olivia",3,    "Grade 3",
  "Performance","Drama","Olivia",2,    "Grade 3",
  "Humanities","Classics","Nicholas",6,"Grade 4",
  "Humanities","History","Nicholas",3, "Grade 4",
  "Performance","Music","Nicholas",1,  "Grade 4",
  "Performance","Drama","Nicholas",6,  "Grade 4",
  "Humanities","Classics","Paul",3,    "Grade 4",
  "Humanities","History","Paul",8,     "Grade 4",
  "Performance","Music","Paul",1,      "Grade 4",
  "Performance","Drama","Paul",5,      "Grade 4")

# source("R/plus_mmtable.R")


table1 <-  student_df %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table2 <-  student_df %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table3 <-  student_df_3 %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table1
table2
table1 + table1
table1 + table3



