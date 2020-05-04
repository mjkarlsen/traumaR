#' GCS Assessment of the stimulus required for verbal response (or written response if verbal response is impaired by intubation or tracheostomy),
#'    assessed within 30 minutes or less of ED/hospital arrival.  (pg. 67)
#'
#' @param col A column in PTOS data that typically starts with VER_RESP
#'
#' @return It translations of the code into human friendly values.
#' @export
verb_resp <- function(col) {
  col_value <-  case.(col == 1, "None",
                      col == 2, "Incomprehensible Sounds",
                      col == 3, "Inappropriate Words",
                      col == 4, "Confused",
                      col == 5, "Oriented",
                      default = "Unknown")
  return(col_value)
}
