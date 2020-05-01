#' Final destination after Emergency Department (Pg. 52)
#'
#' @param col A column in PTOS data that typically starts with POST_ED_D
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
post_ed_d <- function(col) {
  col_value <-  case.(col == 1,    'ICU/Critical Care Unit',
                      col == 10,    'Home',
                      col == 11,    'Interventional Angiography',
                      col == 2,    'OR (Including Pre-Op Area)',
                      col == 3,    'Med/Surg Unit',
                      col == 4,    'Prison Ward (in-house)',
                      col == 5,    'Step Down Unit/Intermediate',
                      col == 6,    'Morgue (Coroner, Death, DOA)',
                      col == 7,    'Transfer to Other Hospital/Trauma Center',
                      col == 8,    'Labor & Delivery',
                      col == 9,    'Burn Unit (in-house)',
                      default = "Unknown")
  return(col_value)
}
