
#' Create Normalized Arrival and Discharge Data
#'
#' @param .data USe the PTOS_DF
#'
#' @return Normalized dataframe
#' @export
create_arrival_discharge_df <- function(.data){

.data %>%
  select.(id, eda_time_a, eda_date_a, ref_ar_d_a, ref_ar_t_a, ref_dp_d_a, ref_dp_t_a, edl_date_a, edl_time_a) %>% head(100) %>%
  # filter.(id == '0101190120101353') %>%
  pivot_longer.(cols = -id) %>%
  drop_na.() %>%
  mutate.(type_col = ifelse.(str_detect(name, paste(c("date", "_d_", 'd_death'), collapse = '|')),'date', 'time'),
          code_desc = case.(name == 'eda_time_a', 'Arrival' ,
                            name == 'eda_date_a', 'Arrival' ,
                            name == 'ref_ar_d_a', "Arrival",
                            name == 'ref_ar_t_a', "Arrival",
                            name == 'ref_dp_d_a', "Discharge",
                            name == 'ref_dp_t_a', "Discharge",
                            name == 'edl_date_a', "Discharge",
                            name == 'edl_time_a', "Discharge",
                            name == 'd_death_a', "Discharge",
                            name == 't_death_a', "Discharge"),
          loc_desc = case.(name == 'eda_time_a', "ED",
                           name == 'eda_date_a', "ED",
                           name == 'ref_ar_d_a', "Referring Facility",
                           name == 'ref_ar_t_a', "Referring Facility",
                           name == 'ref_dp_d_a', "Referring Facility",
                           name == 'ref_dp_t_a', "Referring Facility",
                           name == 'edl_date_a', "ED",
                           name == 'edl_time_a', "ED",
                           name == 'd_death_a', "Discharge/Death/Transfer",
                           name == 't_death_a', "Discharge/Death/Transfer")) %>%
  select.(-name) %>%
  pivot_wider.(names_from = type_col, values_from = value) %>%
  mutate.(code_cd = "NA",
          data_source = tolower(code_desc)) %>%
  select.(id, date, time, loc_desc, code_cd, code_desc, data_source)
}
