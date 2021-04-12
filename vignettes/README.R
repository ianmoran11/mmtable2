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

source("./R/table_constructor.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/divide_mmtable.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/multiply_mmtable_.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/plus_mmtable_.R")
# source("https://raw.githubusercontent.com/ianmoran11/mmtable2/master/methods/print_mmtable.R")

student_df

temp <-
  student_df %>%
  mmtable(table_data = value,table_name = "Test")  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class)

attributes(temp)


temp  + header_left_top(subject)



#'
#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
library(tibble)
library(gt)
library(tidyverse)
library(mmtable2)

source("./methods/divide_mmtable.R")
source("./methods/multiply_mmtable_.R")
source("./methods/plus_mmtable_.R")
source("./methods/print_mmtable.R")


# try(table1 %>% gtsave("table1.png"))
ex_table <-
student_df_1 %>%
  mmtable(table_data = value, table_name = "Table 1.1")

ex_table %>% attributes()
ex_table %>% class
ex_table %>% str()

header_object <- header_left(class)

header_object %>% str()
header_object %>% class
header_object %>% attributes()


(  plot_1 <- student_df %>% mmtable(table_data = value, table_name = "Table 1")   )
(  plot_2 <- plot_1  + header_top(student)                                        )
(  plot_3 <- plot_2  + header_top_left(grade)                                     )
(  plot_4 <- plot_3  + header_left(class)                                         )
(  plot_5 <- plot_4  + header_left_top(subject)                                   )
table1 <- plot_5

table1

plot_5_f <-
plot_5 +
header_format(header = grade,
              locations = cells_body(rows = 1, columns = 5),
              style = list(cell_text(align = "left", weight = "bold",color = "darkgrey")))

plot_5_f %>% attributes()

plot_5 %>% (plot_5,)

(  splot_1 <- student_df %>% mmtable(table_data = value, table_name = "Table S")   )
(  splot_2 <- splot_1  + header_top(student)                                        )
(  splot_3 <- splot_2  + header_top_left(grade)                                     )
(  splot_4 <- splot_3  + header_left(class)                                         )
(  splot_5 <- splot_4  + header_left_top(subject)                                   )

 plot_1 %>% attributes()
 plot_2 %>% attributes()
 plot_3 %>% attributes()
 plot_4 %>% attributes()
 plot_5 %>% attributes()

 splot_1 %>% attributes()
 splot_2 %>% attributes()
 splot_3 %>% attributes()
 splot_4 %>% attributes()
 splot_5 %>% attributes()

 plot_5 / splot_5






(
table1.1 <-
  student_df_1 %>%
  mmtable(table_data = value, table_name = "Table 1.1")  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)
)
# try(table1.1 %>% gtsave("table1_1.png"))

(sum_table <- table1 + table1.1 +  table_title("Table Sum"))

table1 + table1.1

(
table2 <-
  student_df_2 %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)
)
# try(table2 %>% gtsave("table2.png"))
#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
(single_table <- table1 +  table_title(title ="Single Table"))
# try(single_table  %>% gtsave("single_table.png"))

#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
(quotient_table <- table1 / table1.1  +  table_title("Table Quotient") + table_source_note(source_note = "This is a note"))
# try(quotient_table  %>% gtsave("quotient_table.png"))

#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
(product_table <- table1 * table1.1  +  table_title("Table Product"))
# try(product_table  %>% gtsave("product_table.png"))

#'
## ---- message=FALSE, warning=FALSE, paged.print=FALSE--------------------------------------------------------------
(sum_table <- table1 + table1.1 +  table_title("Table Sum"))
# try(sum_table  %>% gtsave("sum_table.png"))

#'
#'
#'
