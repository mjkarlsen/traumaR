#' Diagnosis Location of Complication
#'
#' @param col A column in PTOS data that typically starts with COMP_ and ends with _LC
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
comp_lc <- function(col) {
  col <- as.double(col)
  col_value <-  case.(col == 1,    'ED',
                      col == 2,    'OR',
                      col == 3,    'ICU',
                      col == 4,    'Med/Surg Floor',
                      col == 5,    'Stepdown Unit',
                      col == 6,    'Radiology',
                      col == 7,    'Nuclear Medicine',
                      col == 8,    'Burn Unit',
                      col == 9,    'PMR',
                      col == 10,    'Minor Surgery Unit',
                      col == 11,    'Special Procedure Unit/Angiography',
                      col == 12,    'Pre-Hospital (optional)',
                      col == 13,    'PACU',
                      col == 14,    'Postmortem',
                      col == 15,    'EMS (optional)',
                      col == 16,    'Referring Facility (optional)',
                      col == 17,    'Special Procedure Unit',
                      col == 18,    'Angiography',
                      col == 98,    'Pre-Hospital - Transport Provider',
                      default = "Unknown")
  return(col_value)
}
