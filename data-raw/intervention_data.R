## code to prepare `intervention_data` dataset goes here

intervention_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/intervention_data.csv")

intervention_data <- intervention_data %>%
  rename.(inv_code = Code,
          inv_desc = Desc) %>%
  mutate.(inv_chapter = traumaR::procedure_lvl_1(inv_code),
          inv_subchapter = traumaR::procedure_lvl_2(inv_code)) %>%
  select.(inv_code, inv_chapter, inv_subchapter, inv_desc)

usethis::use_data(intervention_data, overwrite = TRUE)
