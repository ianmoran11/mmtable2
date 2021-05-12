#' Convert a list of cells to a list of cell ranges
#'
#' @param row_col_list list of cells
#' @export

single_cells_to_vector <- function(row_col_list){
# row_col_list <- return_list
# browser()

long_row_col_df <- row_col_list %>% map(as_tibble) %>% bind_rows %>% mutate(present = 1)

# long_row_col_df %>% unique() %>%  spread(col,present,fill = 0) %>% print()

extraction_df <- list(list(NULL), list(long_row_col_df))

while(any(extraction_df[[2]][[1]]$present == 1)){
  extraction_df <-  extract_max_rects(extraction_df)
}

# new <- extraction_df[[1]] %>% .[-1]

# crossing(row = new$row %>% unlist, col = new$col) %>%  unique() %>%
#   mutate(present = 1) %>%
#   spread(col,present,fill = 0) %>% print()


extraction_df[[1]] %>% .[-1] %>% tibble(l = .) %>%
  mutate(even = (row_number() %%2)!=0) %>%
  mutate(num = even %>% cumsum) %>%
  spread(even,l) %>%
  mutate(export = map2(`FALSE`,`TRUE`, function(x,y){list(row = y, col = x)})) %>%
  pull(export)

}



