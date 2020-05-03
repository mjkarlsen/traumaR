
#' Create Human Friendly PTOS Data
#'
#' @param .data Imported and Raw PTOS Data
#' @param remove_df Would you like to save some space and remove the raw data?
#'
#' @return A human friendly data set with normalized ouputs for patient demographics, and time series of medical events
#' @export
#'
#' @examples
create_ptos_data <- function(.data, remove_df = FALSE ) {

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

  ## Age Clean Up
  message("Checking on the patient's age - its important to get the age of the patient right")
  results <- results %>%
    mutate.(raw_age = age_cleanup(raw_age, d_birth_a, inj_date_a),
            d_birth_a = dob_cleanup(raw_age, d_birth_a, inj_date_a),
            inj_date_a = dob_cleanup(raw_age, d_birth_a, inj_date_a))


  ## Return the data back to original form
  message("We are almost there!")
  if (!is_data_table) class(results) <- data_class
  knitr::opts_chunk$set(message = FALSE)

  if (remove_df == T) rm(.data)

  ## Returns final results
  results

}
