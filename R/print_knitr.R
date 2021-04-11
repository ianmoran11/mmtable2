print_knitr <- function(mmtable){
  
  class(mmtable) <- append('gt_tbl', class(mmtable))
  
  mmtable
}