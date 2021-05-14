#' Style the first col header
#'
#' @param table a data frame
#' @param format a data frame
#' @export
#' @return a data frame
#' @importFrom gt cells_column_labels
#' @importFrom dplyr everything
#' @importFrom gt tab_style


style_first_col_header <- function(table,format){


  if(is.list(format$location)){
    # At some point check that this evaluatuates to a spanner location
    return(table)
  }

  tab_style(data = table,
            style = format$format_list[[1]],
            locations =cells_column_labels(columns = everything()))
  }
