## code to prepare `injury_data` dataset goes here

injury_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/injury_data.csv")


injury_data <- injury_data %>%
  mutate.(injury_chapter = injury_lvl_1(e_code)) %>%
  rename.(injury_code = e_code) %>%
  select.(injury_code, injury_chapter, everything.())

# injury_data %>% View()


usethis::use_data(injury_data, overwrite = TRUE)
