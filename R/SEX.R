#' Classification of Male or Female (pg. 17)
#'
#' @param col Male = 1 and Female = 2
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
sex <- function(col) {
  col_value <-  case.(col == 1, "MALE",
                      col == 2, "FEMALE",
                      default = "U")
  return(col_value)
}
