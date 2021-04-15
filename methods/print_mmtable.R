print.mmtable  <-function(mmtable){

  # browser()

  formatted_mmtable <- apply_formats(mmtable)

  class(formatted_mmtable) <- c("gt_tbl","list")

  print(formatted_mmtable)

}
