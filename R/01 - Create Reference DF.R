

library(tidytable)
library(data.table)
library(janitor)
library(usethis)

injury_data <- fread("E:/Northwestern/12 - Capstone/ecode_data.csv") %>%
  as.data.table() %>%
  clean_names() %>%
  mutate.(e_code = as.character(e_code)) %>%
  rename.(injury_desc_short = short_desc,
          injury_desc_long = long_desc) %>%
  select.(-diagnosis_code)

fwrite(injury_data, "data-raw/injury_data.csv")

usethis::use_data_raw(name = "injury_data")
usethis::use_data(injury_data, overwrite = TRUE)

#####################################################################

procedures_data <- fread("E:/Northwestern/12 - Capstone/ICD9_Data.csv") %>%
  as.data.table() %>%
  clean_names() %>%
  mutate.(proc_code = as.double(proc_code)) %>%
  rename.(procedure_desc = long_desc) %>%
  select.(-org_proc_code)

fwrite(procedures_data, "data-raw/procedures_data.csv")

usethis::use_data_raw(name = "procedures_data")
usethis::use_data(procedures_data, overwrite = TRUE)


#####################################################################

diagnosis_data <- fread("E:/Northwestern/12 - Capstone/diagnosis_data.csv") %>%
  as.data.table() %>%
  clean_names() %>%
  mutate.(diag_code = as.double(diag_code))

fwrite(diagnosis_data, "data-raw/diagnosis_data.csv")

usethis::use_data_raw(name = "diagnosis_data")
usethis::use_data(diagnosis_data, overwrite = TRUE)

#####################################################################




