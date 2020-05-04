#' Transportation (Pg. 24)
#'    Identifies the method used to transport the patient to the trauma center submitting data and the origin of that transport, e.g., accident scene,   rendezvous or transferring hospital.
#'
#' @param col A column in PTOS data that typically starts with TRANSP_
#'
#' @return It translations of the code into human friendly values.
#' @export
transport <- function(col) {
  col_value <-  case.(col == 1,    'Ambulance',
                      col == 2,    'Helicopter',
                      col == 3,    'Ambulance/Helicopter Rendezvous',
                      col == 4,    'Police',
                      col == 5,    'Fire Rescue',
                      col == 6,    'Private Vehicle',
                      col == 7,    'Walk-in',
                      col == 8,    'Other',
                      col == 9,    'Quick Response Service',
                      default = NA)
  return(col_value)
}
