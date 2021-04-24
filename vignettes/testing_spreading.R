# rm(list = ls())
library(titanic)
library(margins)
library(tidyverse)
library(gt)
library(xml2)
devtools::load_all()


tibble(top_header = c("one","two","two"), values = c(1,2,3))  %>%
  mmtable(table_data = values) +
  header_top(variable = top_header )
