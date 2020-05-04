#' Create the Patient Data Frame
#'
#' @param .data Raw PTOS Dataframe
#' @param df_name Name of Dataframe
#'
#' @return Returns a data frame for patient information
#'
create_patient_df <- function(.data, .trans_flat_df){

  patient_list <- c('id',
                    'trauma_num',
                    'd_birth_a',
                    'age_in_yrs',
                    'pat_adr_z',
                    'pay_cat1',
                    'pay_cat1_o',
                    'inj_type',
                    'inj_date_a',
                    'inj_time_a',
                    'race',
                    'county_pa',
                    'extric_s',
                    'hgt_fall',
                    'e849_x',
                    'sex',
                    'e_code',
                    'ver_resp_1',
                    'ver_resp_2',
                    'ver_resp_a',
                    'ver_resp_r',
                    'ver_resp_s',
                    'eye_opng_1',
                    'eye_opng_2',
                    'eye_opng_a',
                    'eye_opng_r',
                    'eye_opng_s',
                    'mot_resp_1',
                    'mot_resp_2',
                    'mot_resp_a',
                    'mot_resp_r',
                    'mot_resp_s')

  patient_df <- .data %>%
    select.(patient_list) %>%
    left_join.(.trans_flat_df, by = "id") %>%
    mutate.(fltr_diagnosis = ifelse(is.na(fltr_diagnosis), F, fltr_diagnosis),
            fltr_procedure = ifelse(is.na(fltr_procedure), F, fltr_procedure),
            fltr_fasciotomy = ifelse(is.na(fltr_fasciotomy), F, fltr_fasciotomy),
            fltr_complication = ifelse(is.na(fltr_complication), F, fltr_complication))

  patient_df <- ptos_rename_columns(patient_df)

  assign(paste("patient_df"), data.frame(patient_df), envir = .GlobalEnv)

}
