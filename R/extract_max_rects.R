#' Extract the largest binary rectary from a list of rows and cols
#'
#' @param extraction_list a list containting a dataframe of rows and cols and a list of already extracted rows and cols.
#' @return extraction_list
#' @importFrom tidyr crossing
#' @importFrom dplyr filter
#' @importFrom tidyr spread
#' @importFrom dplyr case_when
#' @importFrom dplyr full_join
#' @importFrom dplyr left_join


extract_max_rects <- function(extraction_list){

  # browser()

  ledger <- extraction_list[[1]]
  long_row_col_df <- extraction_list[[2]][[1]]

  gap_filler <-
    crossing(row = min(long_row_col_df$row):max(long_row_col_df$row),
             col = min(long_row_col_df$col):max(long_row_col_df$col)
                         )

  long_row_col_df <-
  gap_filler %>% left_join(long_row_col_df,by = c("row", "col")) %>%
    mutate(present = ifelse(is.na(present),0,present))


  min_row <- long_row_col_df$row %>% min
  min_col <- long_row_col_df$col %>% min

# THIS needs to includes a column for all columsn
  binary_df <- long_row_col_df %>% unique() %>%  spread(col,present,fill = 0) %>% .[-1]



  hist_df <-
    1:nrow(binary_df) %>% map(function(y){
      binary_df %>% map(~ .x[1:y] %>%  rev() %>% accumulate(.f = function(x,y) ifelse(x ==0 | y==0, 0, x + y)) %>% max()) %>% as_tibble()
    }) %>% bind_rows()

  max_index <-
    map(1:nrow(hist_df), ~ hist_df[.x,] %>% unlist() %>% get_max_area_bf %>% as_tibble %>% mutate(row = .x) ) %>%
    bind_rows() %>%
    filter(maxarea == max(maxarea)) %>% filter(row_number() == 1)

  vec_list <-
    list(
      row = (max_index$row + min_row-1):(max_index$row - max_index$maxheight  + min_row) %>% sort(),
      col = (max_index$col + min_col):(max_index$col + max_index$maxarea/max_index$maxheight  + min_col -1) -1
    )

  long_row_col_df_max <-  crossing(row = vec_list[[1]],col = vec_list[[2]]) %>% mutate(present = -1)

  return_df <- long_row_col_df %>% full_join(long_row_col_df_max,by = c("row", "col")) %>%
    mutate(present = present.x + present.y) %>%
    mutate(present = case_when(
      !is.na(present) ~ present,
      !is.na(present.x)& is.na(present) ~ present.x,
      T ~ NA_real_)) %>%
    select(-present.x,-present.y )

  list(append(ledger,vec_list),list(return_df))

}
