#' ---
#' output: github_document
#' editor_options:
#'   chunk_output_type: console
#' ---
#'
#' <!-- README.md is generated from README.Rmd. Please edit that file -->
#'
## ---- include = FALSE----------------------------------------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/README-",
  out.width = "100%"
)

#'
#' # mmtable2
#'
#' <!-- badges: start -->
#' <!-- badges: end -->
#'
#' The goal of mmtable2 is to provide a ggplot2-like interface for untidy tables.
#' It does this by introducing algabraic untidy tables.
#'
#' ## Installation
#'
#' This package is probably too buggy for a smooth installation experience, but feel free to clone and tinker!
#'
#' ## Example
#'
## ----example1, message=FALSE, warning=FALSE, include=FALSE---------------------------------------------------------
rm(list = ls())
devtools::build()
devtools::install()
library(tibble)
library(gt)
library(tidyverse)
library(mmtable2)

#'
#' Here's a GIF demonstrating how to use mmtable2:
#'
## ----echo=FALSE,  message=FALSE, warning=FALSE, out.width = "800px"------------------------------------------------
# knitr::include_graphics("https://unpivotr.s3.amazonaws.com/Peek+2021-04-11+15-34.gif")

#'
## ----message=FALSE, warning=FALSE, include=FALSE-------------------------------------------------------------------
source("./methods/divide_mmtable.R")
source("./methods/multiply_mmtable_.R")
source("./methods/plus_mmtable_.R")
source("./methods/print_mmtable.R")

# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/divide_mmtable.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/multiply_mmtable_.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/plus_mmtable_.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/print_mmtable.R")

#'
#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
student_df

#'
#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
table1 <-
  student_df %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table1

# try(table1 %>% gtsave("table1.png"))

#'
#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
table1.1 <-
  student_df_1 %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

# try(table1.1 %>% gtsave("table1_1.png"))

#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
table2 <-
  student_df_2 %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

# try(table2 %>% gtsave("table2.png"))
#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
single_table <- table1 +  table_title(title ="Single Table")
# try(single_table  %>% gtsave("single_table.png"))

#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
quotient_table <- table1 / table1.1  +  table_title("Table Quotient")
# try(quotient_table  %>% gtsave("quotient_table.png"))

#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
product_table <- table1 * table1.1  +  table_title("Table Product")
# try(product_table  %>% gtsave("product_table.png"))

#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
sum_table <- table1 + table2    +  table_title("Table Sum")
# try(sum_table  %>% gtsave("sum_table.png"))

#'
#'
#'
