table_title <- function(text){

  # browser()
  # text <- "Hello"
  table_title_fn <- function(mmtable1,text = text){ mmtable1 %>% tab_header(title = text)}

  attr(table_title_fn,"text") <- text

  class(table_title_fn) <- append("mmtable",class(table_title_fn))
  class(table_title_fn) <- append("mmtable_table_item",class(table_title_fn))


  table_title_fn

}
