#' Rull the full show for PTOS Data Frame
#'
#' @param .data PTOS Raw Data
#'
#' @return Creates dataframes for patients, medical sequences full, and medical sequences flat
#' @export
run_full_show <- function(.data) {

  is_data_table <- is.data.table(.data)
  data_class <- class(.data)
  if (!is.data.table(.data)) .data <- data.table(.data)
  knitr::opts_chunk$set(message = TRUE)
  tidytable::inv_gc()

  ## Create PTOS Dataframe
  message("Creating PTOS Data")
  create_ptos_data(.data)

  ## Create Transactional Dataframes
  message("Creating Full Transactional Data")
  .trans_full <- create_full_trans(ptos_df)
  message("Creating Flat Transactional Data")
  .trans_flat <- create_flat_trans(.trans_full)

  ## Create Patient Dataframe
  message("Creating Patient Data")
  create_patient_df(ptos_df, .trans_flat, .trans_full)

  ## Create Patient Time Periods
  message("Creating Patient Time Periods")
  create_patient_timeframe(patient_df)


  message("Complete!")


}
