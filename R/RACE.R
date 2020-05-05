#' Race of Patient using Pg. 17
#'
#' @param col Patient Race
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
race <- function(col) {
  col_value <-  case.(col == 1 , 'White' ,
                      col == 2 , 'Black' ,
                      col == 3 , 'Other Race' ,
                      col == 4 , 'Asian' ,
                      col == 5 , 'Other/NFS' ,
                      default = 'Unknown'
  )
  return(col_value)
}
