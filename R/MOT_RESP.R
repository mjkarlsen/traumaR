
#' GCS Assessment of the stimulus necessary to elicit motor response,
#'    Assessed within 30 minutes or less of ED/hospital arrival  (pg. 66)
#'
#' @param col A column in PTOS data that typically starts with MOT_RESP
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
mot_resp <- function(col) {
  col_value <-  case.(col == 1, "None",
                      col == 2, "Extension",
                      col == 3, "Flexion",
                      col == 4, "Withdraws",
                      col == 5, "Localizes pain",
                      col == 6, "Obeys Command",
                      default = "Unknown")
  return(col_value)
}
