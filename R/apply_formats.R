apply_formats <- function(mmtable){

 browser()

  table_format_list <- mmtable %>% attr("_table_format")

  non_empty_format_lists <- table_format_list[[1]] %>% keep(!map_lgl(.,~ unlist(.) %>% is.null))

  # apply_format(mmtable, non_empty_format_lists[[1]])

  non_empty_format_lists %>% map(apply_format,mmtable = mmtable)

}
