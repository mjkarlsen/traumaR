#' Type of Injury (pg. 20)
#'
#' @param col A column in PTOS data that typically starts with INJ_TYPE
#'
#' @return It translations of the code into human friendly values.
#'
inj_type <- function(col) {
  col_value <-  case.(col == 1, "Blunt",
                      col == 2, "Penetrating",
                      col == 3, "Burn",
                      col == 4, "Skin Disease",
                      default = "Unknown")
  return(col_value)
}
