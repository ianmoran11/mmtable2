rm(list = ls())
devtools::build()
devtools::install()
3
#----------------------------------------------------------------
library(tibble)
library(gt)
library(tidyverse)
# library(mmtable2)
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
  header_left(class)

stable %>% attributes() %>% str

stable +
  header_format(student, style = list(cell_text(weight = "bold"))) +
  header_format(student, style = list(cell_text(align =  "right")))



initial_format_list <-  list(list(header = list(), format_list = list()))
initial_format_list_name <- paste0("format_",sample(LETTERS,size = 5) %>% paste(collapse = ""))
names(initial_format_list) <- initial_format_list_name

table_format <- initial_format_list


