header_format <- function(mmtable, header, ...){
  
  browser() 
  
  mmtable$`_data` 
  
  rows <- mmtable %>% attributes() %>% .[["_header_info"]] %>% .[["row_header_df"]] %>% mutate(nth = row_number())
  
  cols <- mmtable %>% attributes() %>% .[["_header_info"]] %>% .[["col_header_df"]] %>% mutate(nth = row_number())
 
  header_chr <- as.character(substitute(header))
  
  rows$row_header_vars %in%  header_chr

  col_to_modify <- which(cols$col_header_vars %in%  header_chr)
  header_cols <- ncol(mmtable$`_data`):(nrow(rows)+1) 
  
  mmtable$`_data` %>% 
    gt() %>% 
    tab_style(locations = cells_body(rows = 1,columns = header_cols ), 
              style = list(cell_text(align = "left", weight = "bold",color = "darkgrey"),cell_borders(sides = "bottom",color = "grey"))) %>% 
    tab_style(locations = cells_body(rows = 2,columns = header_cols ), 
            style = list(cell_text(align = "right", weight = "bold")))  %>% 
    tab_style(locations = cells_body(rows = 3:6,columns = header_cols ), 
                 style = list(cell_text(align = "right")))  %>% 
    tab_style(locations = cells_body(rows = 3:6,columns = 1:2 ), 
            style = list(cell_text(align = "right",weight = "bold")))  
  
}