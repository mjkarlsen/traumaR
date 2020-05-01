
#' Yes and No Classification
#'
#' @param col A column in PTOS data that requires conversion from 1's and 0's to Yes and No.
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
yes_no <- function(col) {
  col_value <-  case.(col == 1, "YES",
                      col == 2, "NO",
                      default = "U")
  return(col_value)
}
