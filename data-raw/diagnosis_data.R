## code to prepare `diagnosis_data` dataset goes here

library(icd.data)


# diagnosis_data <- arrow::read_csv_arrow("E:/Northwestern/12 - Capstone/Data/diagnosis_data.csv")

diagnosis_data <-
  icd9cm_billable$`32` %>%
  select.(code, short_desc, long_desc) %>%
  mutate.(diag_leng = str_length(code),
          new_code = as.double(code),
          diag_code = case.(diag_leng == 5,new_code/100,
                            diag_leng == 4,new_code/10,
                            diag_leng == 3,new_code,
                            default = new_code/10),
          new_code = as.double(new_code)) %>%
  select.(diag_code,code, long_desc, short_desc) %>%
  mutate.(diag_chapter = traumaR::diagnosis_lvl_1(diag_code),
          diag_subchapter = traumaR::diagnosis_lvl_2(diag_code)) %>%
  drop_na.() %>%
  rename.(diag_long_desc = long_desc,
          diag_short_desc = short_desc) %>%
  select.(diag_code, diag_chapter, diag_subchapter, diag_short_desc, diag_long_desc)

# diagnosis_data %>%  View()

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
