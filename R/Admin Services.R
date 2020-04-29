
#' Medical Services
#'
#' @param col A column that typically ends in "_SV"
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
#'
admin_service <- function(col) {
  col_value <-  case.(col == 0,    'Not Admitted',
                      col == 1,    'Trauma Service (General Surgery)',
                      col == 2,    'Neurosurgery Service',
                      col == 3,    'Orthopedic Service',
                      col == 4,    'Thoracic Surgery Service',
                      col == 5,    'Other Surgical',
                      col == 6,    'Other Non-Surgical',
                      col == 7,    'Oromaxillofacial Service',
                      col == 8,    'Obstetrics/Gynecology Service',
                      col == 9,    'Burn Service',
                      col == 10,    'Interventional Radiology',
                      default = NA)
  return(col_value)
}
