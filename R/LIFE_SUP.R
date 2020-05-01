#' Highest Level of Provider - Life Support (pg 25)
#'
#' @param col A column in PTOS data that typically starts with LIFE_SUP
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
life_sup <- function(col) {
  col_value <-  case.(col == 1,    'Basic/Professional',
                      col == 2,    'Advanced',
                      col == 3,    'Basic/Non-Professional',
                      col == 4,    'None',
                      default = "Unknown")
  return(col_value)
}
