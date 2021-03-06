#' Discharge Status
#'
#' @param col  A column in PTOS data that equals dis_status
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
dis_status <- function(col) {
  col_value <-  case.(col == 6 ,  'Alive' ,
                      col == 7 ,  'Dead' ,
                      default =   'Not Documented' )
  return(col_value)
}
