
#' Calculating DOB when DOB is missing using AGE MINUS Injury Date
#'
#' @param age Raw AGE of Patient
#' @param dob Date of Birth
#' @param injury_dt Date of Injury
#'
#' @return Returns the Date of Birth of Patient
#' @export
#'
#' @examples
dob_cleanup <- function(age, dob, injury_dt) {

  col_value <- ifelse.(is.na(dob), as.character(mdy(injury_dt)-years(age)), dob)

  return(col_value)
}


