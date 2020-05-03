#' Diagnosis Data
#'
#' @param ptos_df
#'
#' @return
#'
#' @examples
diagnosis_data <- function(.data) {

  diag_df <- .data %>%
    select.(id, ref_ar_d_a, ref_ar_t_a, starts_with.('icd9_')) %>%
    pivot_longer.(cols = c(-id, ref_ar_d_a, ref_ar_t_a),
                  values_to = "code",
                  values_drop_na = TRUE
    ) %>%
    separate.(name, into = c("type", "serial"), sep = "_") %>%
    mutate.(code = as.double(code)) %>%
    left_join.(diagnosis_data, by = "diag_code") %>%
    rename.(date = ref_ar_dd,
            time = ref_ar_t_a,
            code_desc = shot_desc)
    select(id, date, time, code, code_desc)

  return(.data)
}
