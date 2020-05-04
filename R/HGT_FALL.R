
#' Fall Height
#'
#' @param col A column in PTOS data that typically starts with HGT_FALL
#'
#' @return It translations of the code into human friendly values.
#' @export
hgt_fall <- function(col) {
  col_value <-  case.(col == 0 , 'Fall on Same Level' ,
                      col == 1 , '<= 1 ft' ,
                      col == 2 , '2 - 5 ft' ,
                      col == 3 , '6 - 10 ft' ,
                      col == 4 , '11 - 20 ft' ,
                      col == 5 , '21 - 30 ft' ,
                      col == 6 , '> 30 ft' ,
                      col == 'I', "Inappropriate - patient did not fall",
                      default = "Unknown")
  return(col_value)
}
