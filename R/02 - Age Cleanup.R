#' Calculating Age if AGE is missing using DOB
#'
#' @param age Raw AGE of Patient
#' @param dob Date of Birth of Patient
#' @param adm_dt Date of Admission (eda_date_a)
#'
#' @return Returns the AGE of Patient in Years
#' @export
age_cleanup <- function(age, dob, adm_dt) {

  col_value <- ifelse(is.na(age) & !is.na(dob),
                      as.double(round(difftime(mdy(adm_dt), mdy(dob), unit="weeks")/52.25,0))
                      ,age)

  return(col_value)
}
