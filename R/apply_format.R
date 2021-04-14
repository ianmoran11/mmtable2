apply_format <- function(mmtable, format_list){
 # browser()

  mmtable %>%
    tab_style(locations = cells_body(row = 1:2, columns = 2), style = list(cell_text(weight = "bold")))

  invoke_list <- list(data=mmtable,locations = cells_body(row = 2:4, columns = 2:4)) %>% append(.,  format_list$format_list)

  invoke(tab_style,.x =  invoke_list)



  #     list(header = header_chr, format_list = format_list_q)

  #   table <- mmtable$`_data` %>% gt()
  #   format_list$header <- NULL
  #   invoke_list <- append(list( data=table), format_list$format_list)
  #   invoke(tab_style,.x =  invoke_list)
  #
  #   format_list$format_list
  #
  #   format_list$format_list %>% str()
  #
  #   mmtable$`_data` %>%
  #     gt() %>%
  #     tab_style(locations = format_list$format_list$locations ,
  #               style= format_list$format_list$style )
  #
  #   mmtable$`_data` %>%
  #     gt() %>%
  #     tab_style(format_list$format_list)
  #
  #







}
