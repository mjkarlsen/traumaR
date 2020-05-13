## code to prepare `procedures_data` dataset goes here

procedures_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/procedures_data.csv")

procedures_data <- procedures_data %>%
  mutate.(proc_chapter = traumaR::procedure_lvl_1(proc_code),
          proc_subchapter = traumaR::procedure_lvl_2(proc_code)) %>%
  rename.(proc_short_desc = short_desc,
          proc_long_desc = procedure_desc) %>%
  select.(proc_code, proc_chapter, proc_subchapter, proc_short_desc, proc_long_desc)

usethis::use_data(procedures_data, overwrite = TRUE)
