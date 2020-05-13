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
  mutate.(chapter = traumaR::diagnosis_lvl_1(proc_code),
          subchapter = traumaR::diagnosis_lvl_2(proc_code)) %>%
  drop_na.()

# diagnosis_data %>% View()

########################################################
# For Case Statement Diagnosis Level 1
########################################################

# test_df <- icd.data::icd9_sub_chapters %>%
#   enframe() %>%
#   mutate.(value = as.character(value),
#           ve_test = stringr::str_detect(value, '\"V|\"E'))  %>%
#   filter.(ve_test != T) %>%
#   rename.(subchapter = name) %>%
#   separate.(value, into = c('start', 'end'), sep = ",") %>%
#   mutate.(start =  as.double(unlist(regmatches(start, gregexpr("[[:digit:]]+", start)))),
#           end =  as.double(unlist(regmatches(end, gregexpr("[[:digit:]]+", end))))) %>%
#   select.(-ve_test)

usethis::use_data(diagnosis_data, overwrite = TRUE)
