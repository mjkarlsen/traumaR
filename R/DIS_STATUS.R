#' Discharge Status
#'
#' @param col  A column in PTOS data that equals dis_status
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
dis_status <- function(col) {
  col_value <-  case.(col == 6 ,  'Alive' ,
                      col == 7 ,  'D»ead' ,
                      default =   'Not Documented' )
  return(col_value)
}
