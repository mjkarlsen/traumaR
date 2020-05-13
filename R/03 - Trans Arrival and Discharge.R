
#' Create Normalized Arrival and Discharge Data
#'
#' @param .data USe the PTOS_DF
#'
#' @return Normalized dataframe
#' @export
create_arrival_discharge_df <- function(.data){

.data %>%
    select.(id, eda_time_a, eda_date_a, edl_date_a, edl_time_a, d_death_a, t_death_a) %>%   #ref_ar_d_a, ref_ar_t_a, ref_dp_d_a, ref_dp_t_a,
    pivot_longer.(cols = -id) %>%
    drop_na.() %>%
    mutate.(type_col = ifelse.(str_detect(name, paste(c("date", "_d_", 'd_death'), collapse = '|')),'date', 'time'),
            code_desc = case.(name == 'eda_time_a', 'Arrival' ,
                              name == 'eda_date_a', 'Arrival' ,
                              # name == 'ref_ar_d_a', "Arrival",
                              # name == 'ref_ar_t_a', "Arrival",
                              # name == 'ref_dp_d_a', "Discharge",
                              # name == 'ref_dp_t_a', "Discharge",
                              name == 'edl_date_a', "Discharge",
                              name == 'edl_time_a', "Discharge",
                              name == 'd_death_a', "Discharge",
                              name == 't_death_a', "Discharge"),
            loc_desc = case.(name == 'eda_time_a', "ED",
                             name == 'eda_date_a', "ED",
                             # name == 'ref_ar_d_a', "Referring Facility",
                             # name == 'ref_ar_t_a', "Referring Facility",
                             # name == 'ref_dp_d_a', "Referring Facility",
                             # name == 'ref_dp_t_a', "Referring Facility",
                             name == 'edl_date_a', "ED",
                             name == 'edl_time_a', "ED",
                             name == 'd_death_a', "Discharge/Death/Transfer",
                             name == 't_death_a', "Discharge/Death/Transfer")) %>%
    select.(-name) %>%
    pivot_wider.(names_from = type_col, values_from = value, values_fn = max) %>%
    filter.(date != 'NA') %>%
    mutate.(code_cd = "AR_DISC",
            chapter_desc = toupper(code_desc),
            subchapter_desc = toupper(paste(code_desc, loc_desc, sep = " ")), #later maybe add in the way the patient was transported
            data_source = "arrival/discharge") %>%
        select.(id, date, time, loc_desc, code_cd, chapter_desc, subchapter_desc, code_desc, data_source)
}
