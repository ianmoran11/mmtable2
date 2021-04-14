`+.mmtable` <- function(mmtable1,mmtable2){

  # browser()


  class(mmtable2)

  # mmtable1 <- table1
  # mmtable2 <- table1

  if("table_format_list" %in% class(mmtable2)){

    str(mmtable2)

    mmtable1_formats  <- attributes(mmtable1) %>% .[["_table_format"]]

    # mmtable2_formats_length <- length(mmtable1_formats[[1]])

    updated_format_list <-  mmtable1_formats[[1]] %>% append(mmtable2)

    attr(mmtable1,"_table_format") <- list("_table_format" = updated_format_list)

    attr(mmtable1,"_table_format") %>%  str()
    return(mmtable1)


    }

  if(is.null(mmtable2)){return(mmtable1)}
  if(is.null(mmtable1)){return(mmtable2)}


  if("mmtable_header" %in% class(mmtable2)){
    return(mmtable1 * mmtable2)
  }


  if("mmtable_table_item" %in% class(mmtable2)){
    # return(mmtable1 * mmtable2)

    return_table <- invoke(mmtable2, append(list(mmtable1),attr(mmtable2,"table_args")))

    class(return_table) <- append("mmtable",class(return_table))

    return(return_table)

  }

  if("table_format_list" %in% class(mmtable2)){
    # return(mmtable1 * mmtable2)

    # return_table <- invoke(mmtable2, append(list(mmtable1),attr(mmtable2,"table_args")))

    table_format_1 <- attributes(mmtable1) %>% .[["_table_format"]]

    table_format  <- append(table_format_1[[1]], list(mmtable2))

    attr(mmtable1, "_table_format") <-list(table_format = table_format)

    class(mmtable1) <- append("mmtable",class(mmtable1))

    return(mmtable1)

  }




  #  Get table 1 attributes
  # Give table_id_header
  table_meta_1 <- attr(mmtable1,"_table_meta")
  # Get header info

  table_format_1 <- attr(mmtable1,"_table_format")
  header_info_1 <- attr(mmtable1,"_header_info")

  if(!"table_id_col" %in% names(attr(mmtable1,"_original_data"))){
  attr(mmtable1,"_original_data") <- attr(mmtable1,"_original_data") %>% mutate(table_id_col = table_meta_1$table_name[[1]])
  }


  # Update header info
  header_info_1$col_header_df <- header_info_1$col_header_df %>% bind_rows(tibble(col_header_vars = "table_id_col", direction = "top_left"), .) %>% unique
  attr(mmtable1,"_header_info") <- header_info_1


  # Get table 2 attibutes
  table_meta_2 <- attr(mmtable2,"_table_meta")
  table_format_2 <- attr(mmtable2,"_table_format")

  if(!"table_id_col" %in% names(attr(mmtable2,"_original_data"))){
  attr(mmtable2,"_original_data") <- attr(mmtable2,"_original_data") %>% mutate(table_id_col = table_meta_2$table_name[[1]])
  }

  header_info_2 <- attr(mmtable2,"_header_info")
  header_info_2$col_header_df <- header_info_2$col_header_df %>% bind_rows(tibble(col_header_vars = "table_id_col", direction = "top_left"), .)
  attr(mmtable2,"_header_info") <- header_info_2


  # mmtable1 %>% attributes()
  # mmtable2 %>% attributes()


  mmtable1 * mmtable2


}






























































