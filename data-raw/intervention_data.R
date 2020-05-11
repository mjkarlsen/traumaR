## code to prepare `intervention_data` dataset goes here

intervention_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/intervention_data.csv")

usethis::use_data(intervention_data, overwrite = TRUE)
