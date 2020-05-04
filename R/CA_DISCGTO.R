#' Child Discharged to
#' Was the child discharged to a different caregiver than when they were admitted?  (pg. 77)
#'
#' @param col A column in PTOS data typically CA_DISCGTO
#'
#' @return It translations of the code into human friendly values.
#'
ca_discgto <- function(col) {
  col_value <-  case.(col == 1,    'Other Parent',
                      col == 2,    'Other Relative',
                      col == 3,    'Other',
                      col == 4,    'Foster Care')
  return(col_value)
}
