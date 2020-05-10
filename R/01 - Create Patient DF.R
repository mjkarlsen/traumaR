#' Create the Patient Data Frame
#'
#' @param .data Raw PTOS Dataframe
#' @param .trans_flat_df Flat Transactional Dataframe
#' @param .trans_full_df Full Transactional Dataframe
#'
#' @return Returns a data frame for patient information
#' @export
#'
create_patient_df <- function(.data, .trans_flat_df, .trans_full_df){

  # First Pull the date and times of fasciotomy and forearm procedures by patient
  .fasciotomy_proc_df <- .trans_full_df %>%
    filter.(code_cd == '83.14') %>%
    arrange.(id, date, time) %>%
    slice.(1, by = id) %>%
    select.(id, date, time, loc_desc, code_cd, code_desc) %>%
    rename.(fasciotomy_dt = date,
            fasciotomy_tm = time,
            fasciotomy_loc = loc_desc,
            fasciotomy_cd = code_cd,
            fasciotomy_desc = code_desc)

  .forearm_proc_df <- .trans_full_df %>%
    filter.(code_cd %in% c('79.02', '79.12', '79.22', '79.32')) %>%
    arrange.(id, date, time) %>%
    slice.(1, by = id) %>%
    select.(id, date, time, loc_desc, code_cd, code_desc) %>%
    rename.(forearm_fx_dt = date,
            forearm_fx_tm = time,
            forearm_fx_loc = loc_desc,
            forearm_fx_cd = code_cd,
            forearm_fx_desc = code_desc)

  .diagnosis_df <- .trans_full_df %>%
    filter.(code_cd %in% c(seq(from = 813.00, to = 813.99, by = 0.01))) %>%
    arrange.(id, date, time) %>%
    slice.(1, by = id) %>%
    select.(id, date, time, loc_desc, code_cd, code_desc) %>%
    rename.(diagnosis_dt = date,
            diagnosis_tm = time,
            diagnosis_loc = loc_desc,
            diagnosis_cd = code_cd,
            diagnosis_desc = code_desc)

  .arrival_discharge_df <- .trans_full_df %>%
    filter.(data_source %in% c('arrival', 'discharge')) %>%   #, 'discharge', 'transport'
    select.(id, date, time, code_desc) %>%
    filter.(date != 'NA') %>%
    arrange.(id, date, time) %>%
    pivot_wider.(names_from = code_desc, values_from = c(date, time), values_fn = max) %>%
    rename.(arrival_dt = date_Arrival,
            arrival_tm = time_Arrival,
            discharge_dt = date_Discharge,
            discharge_tm = time_Discharge) %>%
    select.(id, arrival_dt, arrival_tm, discharge_dt, discharge_tm)

  # Select the list of columns important for patient analysis
  patient_list <- c('id',
                    'trauma_num',
                    'd_birth_a',
                    'age_in_yrs',
                    'sex',
                    'race',
                    'county_pa',
                    'pat_adr_z',
                    'pay_cat1',
                    'pay_cat1_o',
                    'inj_type',
                    'inj_date_a',
                    'inj_time_a',
                    'e_code',
                    'e849_x',
                    'hgt_fall',
                    'extric_s',
                    'eye_opng_s',
                    'ver_resp_s',
                    'mot_resp_s',
                    'eye_opng_1',
                    'ver_resp_1',
                    'mot_resp_1',
                    'eye_opng_2',
                    'ver_resp_2',
                    'mot_resp_2',
                    'eye_opng_r',
                    'ver_resp_r',
                    'mot_resp_r',
                    'eye_opng_a',
                    'ver_resp_a',
                    'mot_resp_a')

  patient_df <- .data %>%
    select.(patient_list) %>%
    left_join.(.fasciotomy_proc_df, by = 'id') %>%
    left_join.(.forearm_proc_df, by = 'id') %>%
    left_join.(.diagnosis_df, by = 'id') %>%
    left_join.(.trans_flat_df, by = "id") %>%
    left_join.(.arrival_discharge_df, by = "id") %>%
    # mutate.(fltr_diagnosis = ifelse(fltr_diagnosis == 'NA', F, fltr_diagnosis),
    #         fltr_procedure = ifelse(fltr_procedure == 'NA', F, fltr_procedure),
    #         fltr_fasciotomy = ifelse(fltr_fasciotomy  == 'NA', F, fltr_fasciotomy),
    #         fltr_complication = ifelse(fltr_complication == 'NA', F, fltr_complication))
    mutate.(fltr_procedure = ifelse(is.na(forearm_fx_dt), F, T),
            fltr_fasciotomy = ifelse(is.na(fasciotomy_dt), F, T),
            fltr_diagnosis = ifelse(is.na(diagnosis_dt), F, T),
            fltr_complication = ifelse(is.na(fltr_complication), F, fltr_complication),
            peds_adult_flag = ifelse.(age_in_yrs <= 16, 'Peds', 'Adult'),
            age_grp = as.character(floor(age_in_yrs/10)))

  # Convert all codes into human friendly translations
  patient_df <- patient_df %>%
    mutate_across.(sex, traumaR::sex) %>%
    mutate_across.(race, traumaR::race) %>%
    mutate_across.(county_pa, traumaR::county) %>%
    mutate_across.(pay_cat1, traumaR::pay_cat) %>%
    mutate_across.(inj_type, traumaR::inj_type) %>%
    mutate_across.(e_code, traumaR::e_code) %>%
    mutate_across.(e849_x, traumaR::injury_loc) %>%
    mutate_across.(hgt_fall, traumaR::hgt_fall) %>%
    mutate_across.(extric_s, traumaR::yes_no) %>%
    mutate_across.(starts_with.('ver_resp_'), traumaR::verb_resp) %>%
    mutate_across.(starts_with.('eye_opng_'), traumaR::eye_opng) %>%
    mutate_across.(starts_with.('mot_resp_'), traumaR::mot_resp)

  # Rename all columns with human friendly names
  patient_df <- rename_columns(patient_df)


  # Create the patient_df dataframe
  assign(paste("patient_df"), data.frame(patient_df), envir = .GlobalEnv)

}
