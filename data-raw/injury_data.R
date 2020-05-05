## code to prepare `injury_data` dataset goes here

injury_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/injury_data.csv")

usethis::use_data(injury_data, overwrite = TRUE)
