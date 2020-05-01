#' Protective devices (safety equipment) in use or worn by the patient at the time of the injury
#'
#' @param col A column in PTOS data that typically starts with PROT_DEV.
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
prot_dev <- function(col) {
  col_value <-  case.(col == 0,    'None',
                      col == 1,    'Seatbelt',
                      col == 2,    'Car Seat',
                      col == 3,    'Airbag (Deployed)',
                      col == 4,    'Helmet',
                      col == 5,    'Seatbelt & Airbag (Deployed)',
                      col == 6,    'Sports Equipment',
                      col == 7,    'Industrial Equipment',
                      col == 8,    'Booster Seat',
                      default = NA)
  return(col_value)
}
