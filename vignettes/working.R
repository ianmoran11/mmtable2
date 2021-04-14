rm(list = ls())
devtools::build()
devtools::install(".")
3
#----------------------------------------------------------------
install.packages("renv")

renv::init()

library(tibble)
library(gt)
library(tidyverse)
library(mmtable2)
devtools::load_all()


source("./methods/divide_mmtable.R")
source("./methods/multiply_mmtable_.R")
source("./methods/plus_mmtable_.R")
source("./methods/print_mmtable.R")

student_df

stable <-
  student_df %>%
  mmtable(table_data = value,table_name = "Test")  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table <-
  stable +
  header_format(student, style = list(cell_text(weight = "bold"))) +
  header_format(student, style = list(cell_text(align =  "right"))) +
  header_format(subject, style = list(cell_text(weight = "bold"))) +
  cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
  table_format(locations = cells_body(rows = 1), style = list(cell_text(weight = "bold")))

apply_formats(table)

