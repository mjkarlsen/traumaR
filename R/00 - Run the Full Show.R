#' Rull the full show for PTOS Data Frame
#'
#' @param .data PTOS Raw Data
#'
#' @return Creates dataframes for patients, medical sequences full, and medical sequences flat
#' @export
#'

run_full_show <- function(.data) {

  is_data_table <- is.data.table(.data)
  data_class <- class(.data)
  if (!is.data.table(.data)) .data <- data.table(.data)
  knitr::opts_chunk$set(message = TRUE)
  tidytable::inv_gc()


  ## Create PTOS Dataframe
  ptos_df <- create_ptos_data(.data)

  ## Create Patient Dataframe



  return(.data)
}
