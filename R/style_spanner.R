
#' @importFrom gt cells_column_spanners
#' @importFrom dplyr everything
#' @importFrom gt tab_style

style_spanner <- function(table,format){

  # browser()

  if(is.list(format$location)){
   # At some point check that this evaluatuates to a spanner location
    return(table)
  }

  tab_style(data = table,
            style = format$format_list[[1]],
            locations =cells_column_spanners(spanners = everything()))
}
