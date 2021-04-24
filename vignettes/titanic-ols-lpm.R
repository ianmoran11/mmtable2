rm(list = ls())
library(titanic)
library(margins)
library(tidyverse)
library(gt)
library(xml2)
devtools::load_all()

titanic_df <-
  titanic_train %>% as_tibble()  %>%
  mutate(Pclass = as.factor(Pclass))

male_ols_1 <-
 titanic_df %>% filter(Sex == "male") %>% lm(Survived  ~ Pclass + Age, data= .)

coeff_df <-
male_ols_1 %>% broom::tidy() %>%
  map_if(is.numeric, ~ .x %>% round(3) %>% sprintf("%.3f",.)) %>% bind_cols() %>%
  mutate(std.error = paste0("(",std.error,")")) %>%
  mutate(estimate = case_when(
    p.value < .001 ~ paste0(estimate,"*** "),
    p.value < .01  ~ paste0(estimate,"**  "),
    p.value < .05  ~ paste0(estimate,"*   "))) %>%
  gather(var,value, -term) %>%
  mutate(var = ifelse(var == "std.error", "",var)) %>%
  mutate(stat_type = "Coefficients") %>%
  mutate(var_level = str_extract(term, "[0-9]+$") %>% ifelse(is.na(.),"",.)) %>%
  mutate(term = term %>% str_remove_all("[0-9]+$")) %>%
  mutate(model_type = "LPM") %>%
  mutate(term = str_replace_all(term,"^\\(Intercept\\)","Intercept")) %>%
  bind_rows(.,
tribble(
~term,   ~var,         ~value,        ~stat_type,    ~var_level, ~model_type,
"Pclass", "estimate" , "-" , "Coefficients", "1",         "LPM",
"Pclass", ""        , "-"    , "Coefficients", "1",         "LPM"
  )
) %>%
  mutate(term = str_replace_all(term,"^Pclass","Passenger class")) %>%
  mutate(specification = "(II)")



model_df <-
male_ols_1 %>% broom::glance() %>%
  gather(var,value) %>%
  map_if(is.numeric, ~ .x %>% round(3) %>% sprintf("%.2f",.)) %>% bind_cols() %>%
  filter(var %in% c("nobs","AIC","r.squared","adj.r.squared","statistic","logLik")) %>%
  mutate(stat_type = "Model") %>%
  rename(term = var) %>%
  mutate(model_type = "LPM") %>%
  mutate(term = term %>%
           str_replace_all("^r.squared",html("R2")) %>%
           str_replace_all("^adj.r.squared","Adjusted R2") %>%
           str_replace_all("^logLik","Log likelihood") %>%
           str_replace_all("^statistic","F statistic") %>%
           str_replace_all("^nobs","Observations") %>%
           str_replace_all("^AIC","Akaike Inf. Crit.")) %>%
  mutate(var_level = "") %>%
  mutate(specification = "(II)")

row_list <- cells_body(rows = c(2,12,18))
style_list <- list(cell_borders(sides = "bottom",color = "black"))

table_df_1 <-
bind_rows(coeff_df,model_df) %>%
  mutate(term = fct_relevel(term,c("Intercept","Age", "Passenger class","Observations", "R2", "Adjusted R2",
                                   "Log likelihood", "Akaike Inf. Crit.","statistic"
  ))) %>%
  filter( !var %in% c("p.value", "statistic"))


table_1 <-
  mmtable(table_data =  value)  +
  header_top(model_type) +
  header_left_top(var_level) +
  header_left_top(term) +
  header_left_top(stat_type) +
  cells_format(T,cell_text(align = "left")) +
  header_format(term,cell_text(align = "right")) +
  header_format(var_level,cell_text(align = "left")) +
  header_format(model_type,cell_text(align = "left")) +
  table_format(locations = row_list, style= style_list)

apply_formats(table_1) + table_source_note(source_note = "Note: LPM = Linear probability model.")
apply_formats(table_1 + header_merged_cols())

table_temp <-
bind_rows(table_df_1,table_df_2) %>%
  mmtable(table_data =  value)  +
  header_top(model_type) +
  header_left_top(var_level) +
  header_left_top(term) +
  header_left_top(stat_type) +
  header_top(specification) +
  cells_format(T,cell_text(align = "left")) +
  header_format(term,cell_text(align = "right")) +
  header_format(var_level,cell_text(align = "left")) +
  header_format(model_type,cell_text(align = "left")) +
  table_format(locations = row_list, style= style_list)


apply_formats(table_temp + header_top(specification) +
                table_format(locations = row_list, style= style_list)
)

apply_formats(table_temp + header_top(specification) +
                # table_format(locations = row_list, style= style_list) +
                header_merged_cols()
)

table_1 <-

bind_rows(
  bind_rows(coeff_df,model_df) %>% mutate(model_spec = "LPM"),
  bind_rows(coeff_df,model_df) %>% mutate(model_spec = "Logit")
) %>%
  filter( !var %in% c("p.value", "statistic")) %>%
  mmtable(table_data =  value,table_name = "I")  +
  header_left_top(term) +
  header_left_top(stat_type) +
  header_top(model_spec)

table_2 <-
bind_rows(coeff_df,model_df) %>%
  filter( !var %in% c("p.value", "statistic")) %>%
  mmtable(table_data =  value, table_name = "II")  +
  header_left(term) +
  header_left_top(term) +
  header_left_top(stat_type)

table_1 + table_2








    ?sprintf


titanic_train %>% filter(Sex == "female") %>%
  lm(Survived  ~ I(as.factor(Pclass)) + Age + I(Age^2) + as.factor(SibSp), data= .) %>% broom::tidy()

df <-
titanic_train %>% filter(Sex == "female") %>%
  mutate(Pclass = as.factor(Pclass)) %>%
  mutate(age_sq = Age^2) %>%
  mutate(SibSp = as.factor(SibSp))

model_result <-   glm(Survived  ~ Pclass + Age + age_sq , data= df,family = binomial)

margins(model = model_result,data = df) %>% broom::tidy()
margins(model = model_result,data = df) %>% broom::glance()



?titanic_test

