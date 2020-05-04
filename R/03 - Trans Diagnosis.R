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
            starts_with.('icd9_')) %>%
    pivot_longer.(
      cols = -c(id, ref_ar_d_a, ref_ar_t_a),
      values_to = "code",
      values_drop_na = TRUE
    ) %>%
    separate.(name, into = c("type", "serial"), sep = "_") %>%
    mutate.(diag_code = as.double(code),
            loc_desc = "Diagnosis",
            data_source = "diagnosis") %>%
    left_join.(diagnosis_data, by = "diag_code") %>%
    rename.(
      date = ref_ar_d_a,
      time = ref_ar_t_a,
      code_cd = diag_code,
      code_desc = short_desc
    ) %>%
    select.(id, date, time, loc_desc, code_cd, code_desc, data_source) %>%
    filter.(!is.na(code_cd))

  return(.data)
}
