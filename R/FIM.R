
#' Functional Status at Discharge
#'
#' @param col A column in PTOS data that typically starts with D_DISABLE_
#'
#' @return It translations of the code into human friendly values.
#' @export
fim <- function(col) {
  col_value <-  case.(col == 0,    'Pediatric (Age < 2)',
                      col == 1,    'Fully Dependent',
                      col == 2,    'Partially Dependent',
                      col == 3,    'Mostly Independent',
                      col == 4,    'Fully Independent',
                      default = "Unknown")
  return(col_value)
}
