
#' Create Human Friendly PTOS Data
#'
#' @param .data Imported and Raw PTOS Data
#'
#' @return A human friendly data set with normalized ouputs for patient demographics, and time series of medical events
#' @export
#'
#' @examples
create_ptos_data <- function(.data) {

  ## Convert .data to data.table
  is_data_table <- is.data.table(.data)
  data_class <- class(.data)
  if (!is.data.table(.data)) .data <- data.table(.data)
  knitr::opts_chunk$set(message = TRUE)

  ## Make sure all the column names are nice and clean - no need for chaos here
  message("Making the column names nice and pretty")
  .data <- janitor::clean_names(.data)

  ## Drop Useless columns
  message("Let's drop those useless columns with no observations")
  results <- drop_blank_columns(.data)
  tidytable::inv_gc()


  ## Return the data back to original form
  message("We are almost there!")
  if (!is_data_table) class(results) <- data_class
  knitr::opts_chunk$set(message = FALSE)

  ## Returns final results
  results

}
