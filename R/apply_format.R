#' Apply formating to a mmtable
#'
#' @param mmtable an mmtable
#' @param format_list a list of formating commands.
#' @return mmtable
#' @export

apply_format <- function(mmtable, format_list){

browser()
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

    # browser()

    invoke_list <- list(data=mmtable,locations =locations_list) %>% append(.,  format_list$format_list)

    return_table <- invoke(tab_style,.x =  invoke_list)
    return(return_table)

  }

  if(all(is.na(unlist(locations_list)))){

    return(mmtable)
  }

  all_cells_locations <-
  crossing(rows = 1:nrow(mmtable$`_data`), cols = 1:ncol(mmtable$`_data`))  %>%
    mutate(all_cells_locations = map2(rows,cols, ~ list(row = .x, col= .y) )) %>% pull(all_cells_locations)

  if(any(!locations_list %in% all_cells_locations)){

    row_deductor <- attr(mmtable,"_header_info") %>% .[["col_header_df"]] %>% nrow()

    new_locations_list <-  locations_list %>% map( ~list(row = .x[[1]] -row_deductor, col = .x[[2]] ))

    result <-   append(list(mmtable), new_locations_list) %>% reduce(format_a_loc,format_list = format_list)

    return(result)

  }

  append(list(mmtable), locations_list) %>% reduce(format_a_loc,format_list = format_list)


}
