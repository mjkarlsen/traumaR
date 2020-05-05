## code to prepare `diagnosis_data` dataset goes here

diagnosis_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/diagnosis_data.csv")

usethis::use_data(diagnosis_data, overwrite = TRUE)
