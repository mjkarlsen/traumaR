#' Create Human Friendly PTOS Data
#'
#' @param .data Imported and Raw PTOS Data
#'
#' @return A human friendly data set with normalized ouputs for patient demographics, and time series of medical events
#' @export

create_ptos_data <- function(.data ) {

  ## Convert .data to data.table
  is_data_table <- is.data.table(.data)
  data_class <- class(.data)
  if (!is.data.table(.data)) .data <- data.table(.data)
  knitr::opts_chunk$set(message = TRUE)

  ## Make sure all the column names are nice and clean - no need for chaos here
  message("Making the column names nice and pretty")
  results <- janitor::clean_names(.data)

  ## Drop Useless columns
  # message("Let's drop those useless columns with no observations")
  # results <- drop_blank_columns(.data)

  ## Age Clean-Up, DOB Clean-Up, and Injury Date Clean-Up
  message("Checking on the patient's age - its important to get the age of the patient right")
  results <- results %>%
    mutate.(age_in_yrs = age_cleanup(age_in_yrs, d_birth_a, inj_date_a),
            d_birth_a = dob_cleanup(age_in_yrs, d_birth_a, inj_date_a),
            inj_date_a = dob_cleanup(age_in_yrs, d_birth_a, inj_date_a)) %>%
    filter.(!is.na(d_birth_a) & !is.na(age_in_yrs))

  ## Create Unique ID
  message("Creating a unique ID for the Patients using DOB and Trauma Number")
  results <- results %>%
    mutate.(id = paste0(stringr::str_remove_all(d_birth_a, "/"), trauma_num)) %>%
    relocate.(id, .before = 1)


  ## Creating the PTOS Dataframe
  assign(paste("ptos_df"), data.frame(results), envir = .GlobalEnv)

  ## Return the data back to original form
  message("We are almost there!")
  if (!is_data_table) class(results) <- data_class
  knitr::opts_chunk$set(message = FALSE)


}
