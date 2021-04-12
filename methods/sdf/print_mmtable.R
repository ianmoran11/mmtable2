`print.mmtable` <-function(x){

  class(x) <- "gt_tbl"

  print(x)

}
