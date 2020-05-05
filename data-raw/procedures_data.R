## code to prepare `procedures_data` dataset goes here

procedures_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/procedures_data.csv")

usethis::use_data(procedures_data, overwrite = TRUE)
