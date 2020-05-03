#' Calculating Age if AGE is missing using DOB
#'
#' @param age Raw AGE of Patient
#' @param dob Date of Birth of Patient
#' @param injury_dt Date of Injury
#'
#' @return Returns the AGE of Patient in Years
#' @export
#'
#' @examples
age_cleanup <- function(age, dob, injury_dt) {

  col_value <- ifelse.(is.na(age) & !is.na(dob),
                      as.double(round(difftime(mdy(injury_dt), mdy(dob), unit="weeks")/52.25,0))
                      ,age)

  return(col_value)
}
