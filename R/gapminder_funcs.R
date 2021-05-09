#' Conditionally apply a function
#'
#' @param data an mmtable
#' @export
#' @param country_input a list containing a row and col items
#' @importFrom magrittr %>%
#' @importFrom dplyr bind_rows
#' @importFrom tidyr gather
#' @importFrom stats lm
#' @importFrom dplyr mutate

model_lexp <- function(data,country_input){

  # browser()

  model <- data %>% dplyr::filter(country == country_input) %>%  lm(lifeExp ~ year + gdpPercap, data = . )

  model_table <-
    bind_rows(
      model %>% broom::tidy() %>% gather(statistic, value, -term) %>% mutate(statistic_level = "Coefficients") %>%
        mutate(value = round(value,3)) %>% purrr::map_dfr(~ as.character(.x) %>% str_replace_all("(?<=[A-Z|a-z])\\."," ") %>% str_to_title),
      model %>% broom::glance() %>% gather(statistic, value) %>% mutate(statistic_level = "Model Statistics")  %>%
        mutate(value = round(value,3)) %>% purrr::map_dfr(~ as.character(.x) %>% str_replace_all("(?<=[A-Z|a-z])\\."," ") %>% str_to_title) %>% mutate(term = " ")
    ) %>%
    mutate(value = sprintf("%.3f", as.numeric(value)) %>% as.character() ) %>%
    mutate(value = ifelse(statistic == "Std Error",paste0("(",value,")"),value)) %>%
    mutate(term = ifelse(term == "Gdppercap","GDP per capita",term)) %>%
    mutate(country = country_input) %>%   dplyr::filter(!statistic %in% c("P Value","Statistic","Aic","Bic","Df","Df Residual","Loglik","Nobs","Sigma","Deviance"))  %>%
    dplyr::filter(term != "(Intercept)")

  model_table

}


#' Conditionally apply a function
#'
#' @param model_df an mmtable
#' @export

table_model <- function(model_df){

  country <- model_df$country[1]

  table <-
    model_df %>%
    mmtable(table_data = value,table_name = country) +
    header_left(statistic) +
    header_left_top(term) +
    header_left_top(statistic_level)

  table

}

#' Conditionally apply a function
#'
#' @param model_df an mmtable
#' @export

table_model_wide <- function(model_df){

  country <- model_df$country[1]

  table <-
    model_df %>%
    mmtable(table_data = value,table_name = country) +
    header_top(statistic) +
    header_top_left(term) +
    header_top_left(statistic_level)

  table

}



