
#' Calculating DOB when DOB is missing using AGE MINUS Admission Date
#'
#' @param age Raw AGE of Patient
#' @param dob Date of Birth
#' @param adm_dt Date of Admission (eda_date_a)
#'
#' @return Returns the Date of Birth of Patient
#' @export
dob_cleanup <- function(age, dob, adm_dt) {

  col_value <- ifelse(is.na(dob), as.character(mdy(adm_dt)-years(age)), dob)

  return(col_value)
}


