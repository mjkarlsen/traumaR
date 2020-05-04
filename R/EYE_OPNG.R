
#' GCS Assessment of the stimulus required to induce eye opening,
#'    Assessed within 30 minutes or less of ED/hospital arrival  (pg. 67)
#'
#' @param col A column in PTOS data that typically starts with EYE_OPNG_
#'
#' @return It translations of the code into human friendly values.
#' @export
eye_opng <- function(col) {
  col_value <-  case.(col == 1, "None",
                      col == 2, "To Pain",
                      col == 3, "To Voice",
                      col == 4, "Spontaneous",
                      default = "Unknown")
  return(col_value)
}
