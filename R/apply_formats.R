apply_formats <- function(mmtable){

 # browser()

  table_format_list <- mmtable %>% attr("_table_format")

  non_empty_format_lists <- table_format_list[[1]] %>% keep(!map_lgl(.,~ unlist(.) %>% is.null))

  # apply_format(mmtable, non_empty_format_lists[[1]])

  mmtable_return <- append(list(mmtable), non_empty_format_lists) %>% reduce(apply_format)

  mmtable_return
}
