## code to prepare `diagnosis_data` dataset goes here

library(icd.data)


# diagnosis_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/diagnosis_data.csv")

diagnosis_data <-
  icd9cm_billable$`32` %>%
  select.(code, short_desc, long_desc) %>%
  mutate.(diag_leng = str_length(code),
          code = as.double(code),
          diag_code = ifelse.(diag_leng == 5,code/100, code/10),
          new_code = as.double(code)) %>%
  select.(diag_code,code, long_desc, short_desc) %>%
  drop_na.()

# diagnosis_data %>% View()

usethis::use_data(diagnosis_data, overwrite = TRUE)
