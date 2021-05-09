#' @importFrom magrittr %>%
#' @importFrom dplyr group_by
#' @importFrom dplyr mutate
#' @importFrom dplyr pull
#' @importFrom dplyr row_number
#' @importFrom tibble tibble

get_row_header_names <- function(df,col_header_df_01){
  unlist(df[col_header_df_01[[1,"row_no"]],]) %>% tibble(var = .) %>%
    group_by(var) %>%
    mutate(row_no = row_number()) %>%
    mutate(namer = paste0(var,"[", row_no,"]")) %>% pull(namer)
}
