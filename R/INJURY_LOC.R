#' Classification of type of injury (pg. 20)
#'
#' @param col A column in PTOS data that typically starts with e849_x
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
injury_loc<- function(col) {
  col_value <-  case.(col == 0,    'Home',
                      col == 1,    'Farm',
                      col == 2,    'Mine/Quarry',
                      col == 3,    'Industrial Place and Premises',
                      col == 4,    'Recreational/Sport',
                      col == 5,    'Street/Highway',
                      col == 5,    'Street',
                      col == 6,    'Public Building',
                      col == 7,    'Residential Institution',
                      col == 8,    'Other',
                      col == 9,    'Unspecified',
                      default = "Unknown")
  return(col_value)
}
