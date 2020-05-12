#' Create Normalized Diagnosis Data
#'
#' @param .data USe the PTOS_DF
#'
#' @return Normalized dataframe
#' @export
create_diag_df <- function(.data) {
  .data <- .data %>%
    select.(id,
            ref_ar_d_a,
            ref_ar_t_a,
            eda_date_a,
            eda_time_a,
            starts_with.('icd9_')) %>%
    pivot_longer.(
      cols = starts_with.('icd9_'),
      values_to = "code",
      values_drop_na = TRUE
    ) %>%
    filter.(code != 'NA') %>%
    mutate.(
      diag_code = as.double(code),
      loc_desc = "Diagnosis",
      data_source = "diagnosis",
      date = ifelse.(is.na(ref_ar_d_a), eda_date_a, ref_ar_d_a),   #if the diagnosis did not have a date or time - default to arrival dt/tm
      time = ifelse.(is.na(ref_ar_t_a), eda_time_a, ref_ar_t_a)
    ) %>%
    inner_join.(diagnosis_data, by = "diag_code") %>%
    rename.(code_cd = diag_code,
            code_desc = short_desc) %>%
    select.(id, date, time, loc_desc, code_cd, code_desc, data_source) %>%
    distinct.()

  return(.data)
}
