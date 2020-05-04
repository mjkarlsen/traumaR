#' Location of Medical Procedures
#'
#' @param col A column in PTOS data that typically ends with _lc
#'
#' @return It translations of the code into human friendly values.
#' @export
proc_lc <- function(col) {
  col_value <-  case.(col == 1, "ED",
                      col == 2, "OR",
                      col == 3, "ICU",
                      col == 4, "Med/Surg Floor",
                      col == 5, "Step-down Unit",
                      col == 6, "Radiology",
                      col == 7, "Neclear Medicine",
                      col == 8, "Burn Unit",
                      col == 9, "PMR",
                      col == 10, "Minor Surgery Unit",
                      col == 13, "PACU",
                      col == 14, "Postmortem" ,
                      col == 15, "EMS",
                      col == 16, "Referring Facility",
                      col == 17, "Special Procedure Unit",
                      col == 18, "Angoigraphy",
                      default = "Unknown")
  return(col_value)
}
