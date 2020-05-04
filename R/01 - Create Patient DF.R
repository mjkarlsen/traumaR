#' Create the Patient Data Frame
#'
#' @param .data Raw PTOS Dataframe
#' @param df_name Name of Dataframe
#'
#' @return Returns a data frame for patient information
#'
create_patient_df <- function(.data, df_name = "patient_df"){

  patient_list <- c('trauma_num',
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
                    'e_code')

  patient_df <- .data %>% select.(patient_list)

  assign(paste(df_name), data.frame(patient_df), envir = .GlobalEnv)

}
