#' Post Graduate Year for Resident
#'
#' @param col A column in PTOS data that typically ends in _PGY.
#'
#' @return It translations of the code into human friendly values.
#'
pgy <- function(col) {
  col_value <-  case.(col == 1 ,  'Year 1' ,
                      col == 2 ,  'Year 2' ,
                      col == 3 ,  'Year 3' ,
                      col == 4 ,  'Year 4' ,
                      col == 5 ,  'Year 5' ,
                      col == 6 ,  'Year 6' ,
                      col == 7 ,  'Year 7' ,
                      col == 8 ,  'Year 8' ,
                      col == 9 ,  'Year 9' ,
                      col == 'F', 'Fellow' ,
                      col == 'U', 'Not Documented',
                      default =   'Not Documented' )
  return(col_value)
}
