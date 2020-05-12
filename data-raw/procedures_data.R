## code to prepare `procedures_data` dataset goes here

procedures_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/procedures_data.csv")

procedures_data <- procedures_data %>%
  mutate.(chapter = traumaR::procedure_lvl_1(proc_code),
          subchapter = traumaR::procedure_lvl_2(proc_code)) %>%
  select.(proc_code, chapter, subchapter, procedure_desc, short_desc)

usethis::use_data(procedures_data, overwrite = TRUE)
