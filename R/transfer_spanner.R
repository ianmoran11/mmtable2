#' Transfer spanner from one table to another
#'
#' @param gt_01 arguments of gt::tab_source_note
#' @param gt_02 arguments of gt::tab_source_note
#' @return an mmtable
#' @export
#' @importFrom magrittr %>%
#' @importFrom purrr map
#' @importFrom xml2 xml_add_child
#' @importFrom xml2 xml_find_first



transfer_spanner <- function(gt_01,gt_02){

  browser()

  gt_01 <- table_list[[1]]
  #
  gt_02 <- table_list[[2]]

  if("gt_tbl"  %in% class(gt_01)){
  gt_01_html <- xml2::read_xml(toString(gt:::as.tags.gt_tbl(gt_01)), as_html = TRUE)
  }
  if("xml_document"  %in% class(gt_01)){
  gt_01_html <- xml2::read_xml(gt_01)
  }

  gt_02_html <- xml2::read_xml(toString(gt:::as.tags.gt_tbl(gt_02)), as_html = TRUE)

  htmltools::html_print(htmltools::HTML(as.character(gt_01_html)))
  htmltools::html_print(htmltools::HTML(as.character(gt_02_html)))

  new_header_02 <- xml2::xml_find_all(gt_02_html,'//*[contains(concat( " ", @class, " " ), concat( " ", "gt_col_headings", " " ))]')
  # new_header_01 <- xml2::xml_find_all(gt_01_html,'//*[contains(concat( " ", @class, " " ), concat( " ", "gt_col_headings", " " ))]')



  length(new_header_02):1 %>% map(function(x){
    xml_add_child(
      xml_find_first(gt_01_html, '//*[contains(concat( " ", @class, " " ), concat( " ", "gt_col_headings", " " ))]'),
      xml2::read_xml(as.character(new_header_02)[[x]], html = TRUE),
      .where = 0)
  })

  xml_add_child(
    xml_find_first(gt_01_html, '//*[contains(concat( " ", @class, " " ), concat( " ", "gt_col_headings", " " ))]'),
    xml2::read_xml(  as.character(new_header_02)[[1]], html = TRUE),
    .where = 0)

  as.character(new_header_02)[[1]]

  htmltools::html_print(htmltools::HTML(as.character(gt_01_html)))

 gt_01 <- htmltools::HTML(as.character(gt_01_html))

}
