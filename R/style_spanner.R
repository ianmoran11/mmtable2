#' Style a spanner
#'
#' @param table an gt_tbl
#' @param format formatting
#' @param ... list of data to load into envrionment
#' @export
#' @return a data frame
#' @importFrom gt cells_column_labels
#' @importFrom dplyr everything
#' @importFrom gt tab_style
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
