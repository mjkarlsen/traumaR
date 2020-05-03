#' Calculating Injury Date when Injury Date is missing using AGE PLUS Date of Birth
#'
#' @param age Raw AGE of Patient
#' @param dob Date of Birth
#' @param injury_dt Date of Injury
#'
#' @return Returns a calculated Injury Date based on the Date of Birth and Age of Patient
#' @export
#'
#' @examples
injury_dt_cleanup <- function(age, dob, injury_dt) {

  col_value <- ifelse(is.na(injury_dt), as.character(mdy(dob)+years(age)), injury_dt)

  return(col_value)
}
