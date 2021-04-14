format_a_loc <- function(mmtable, loc,format_list){

  # browser()

  invoke_list <- list(data=mmtable,locations = cells_body(row = loc[[1]], columns = loc[[2]])) %>% append(.,  format_list$format_list)

  invoke(tab_style,.x =  invoke_list)

}
