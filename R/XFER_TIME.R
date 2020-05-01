#' Elapsed time from date/time of arrival at referring facility to date/time of ED admission (Pg. 54)
#'
#' @param col A column in PTOS data that typically starts with XFER_TIME
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
xfer_time <- function(col) {
  col_value <-  case.(col == 1,    '< 1 Hour',
                      col == 2,    '1 to 8 Hours',
                      col == 3,    '9 to 24 Hours',
                      col == 4,    '24+ Hours',
                      default =   'Unknown' )
  return(col_value)
}
