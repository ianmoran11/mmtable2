style_first_col_header <- function(table,format){


  if(is.list(format$location)){
    # At some point check that this evaluatuates to a spanner location
    return(table)
  }



  tab_style(data = table,
            style = format$format_list[[1]],
            locations =cells_column_labels(columns = everything()))}
