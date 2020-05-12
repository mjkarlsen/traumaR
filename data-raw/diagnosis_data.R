## code to prepare `diagnosis_data` dataset goes here

library(icd.data)


# diagnosis_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/diagnosis_data.csv")


diagnosis_data <-
  icd9cm_billable$`32` %>%
  select.(code, short_desc, long_desc) %>%
  mutate.(diag_code = as.double(code)/10) %>%
  select.(diag_code, everything.()) %>%
  drop_na.()

usethis::use_data(diagnosis_data, overwrite = TRUE)
