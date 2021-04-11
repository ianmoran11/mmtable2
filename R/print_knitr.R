print_knitr <- function(mmtable){
  
  class(mmtable) <- c("gt_tbl", "list")
  
  mmtable
}