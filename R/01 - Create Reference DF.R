

library(tidytable)
library(data.table)
library(janitor)
library(usethis)

procedures_data <- fread("E:/Northwestern/12 - Capstone/ICD9_Data.csv") %>%
  as.data.table() %>%
  clean_names() %>%
  mutate.(proc_code = as.double(proc_code)) %>%
  rename.(procedure_desc = long_desc) %>%
  select.(-org_proc_code)

injury_data <- fread("E:/Northwestern/12 - Capstone/R Package/ptos/data/ecode_data.csv") %>%
  as.data.table() %>%
  clean_names() %>%
  mutate.(e_code = as.character(e_code)) %>%
  rename.(injury_desc_short = short_desc,
          injury_desc_long = long_desc) %>%
  select.(-diagnosis_code)

diagnosis_data <- fread("E:/Northwestern/12 - Capstone/diagnosis_data.csv") %>%
  as.data.table() %>%
  clean_names() %>%
  mutate.(diag_code = as.double(diag_code))

use_data(procedures_data, overwrite = TRUE, internal = TRUE)
use_data(injury_data, overwrite = TRUE, internal = TRUE)
use_data(diagnosis_data, overwrite = TRUE, internal = TRUE)

