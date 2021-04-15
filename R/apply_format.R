apply_format <- function(mmtable, format_list){

 # browser()

  # format_list %>% str()

  # format_list$func

 if(format_list$func == "cells_format"){
 locations_list <- get_locations(mmtable = mmtable,func = format_list$func, cell_predicate = format_list$cell_predicate)
 }

 if(format_list$func == "header_format"){
 locations_list <- get_locations(mmtable = mmtable,header = format_list$header, func = format_list$func)
 }

 if(format_list$func == "table_format"){

 locations_list = format_list$locations

    if(locations_list == "all"){

     locations_list <- cells_body(rows = 1:nrow(mmtable$`_data`), columns =  1:ncol(mmtable$`_data`))

     invoke_list <- list(data=mmtable,locations =locations_list) %>% append(.,  format_list$format_list)

     return_table <- invoke(tab_style,.x =  invoke_list)

     return(return_table)

      }

 invoke_list <- list(data=mmtable,locations =locations_list) %>% append(.,  format_list$format_list)

 return_table <- invoke(tab_style,.x =  invoke_list)
 return(return_table)

 }


 append(list(mmtable), locations_list) %>% reduce(format_a_loc,format_list = format_list)


}



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


