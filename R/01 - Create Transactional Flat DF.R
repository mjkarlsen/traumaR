
#' Create Flat Dataframe of all procedures, complications, and diagnosis by ID.
#'   Uses the trans_full_df as its source
#'
#' @param .data
#'
#' @return
#'
#' @import stringr
create_flat_trans <- function(.full_trans) {

  .proc_codes <- list('79.02', '79.12', '79.22', '79.32') #forearm surgery
  .diag_codes <- paste(seq(from = 813.00, to = 813.99, by = 0.01), collapse = "|") #diagnosis for forearm fx

  .flat_trans <- .full_trans %>%
    summarize.(code_cd = paste(code_cd, collapse = " "),
               code_desc = paste(code_desc, collapse = ", "),
               by = c(id, data_source)) %>%
    pivot_wider.(names_from = data_source, values_from = c(code_cd, code_desc)) %>%
    drop_na.() %>%
    mutate.(fltr_diagnosis = str_detect(code_cd_diagnosis, pattern = .diag_codes),
            fltr_procedure = str_detect(code_cd_procedure, pattern = .diag_codes),
            filtr_complication = str_detect(code_cd_complications, pattern = '32'),
            fltr_fasciotomy = str_detect(code_cd_procedure, pattern = '83.14'))

  assign(paste("trans_flat_df"), data.frame(.full_trans), envir = .GlobalEnv)

}
