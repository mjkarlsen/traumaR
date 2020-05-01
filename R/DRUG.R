#' Record of drugs patient tested positive at referring hospital - Pg. 42
#'
#' @param col A column in PTOS data that typically starts with DRUG_
#'
#' @return It translations of the code into human friendly values.
#' @export
#'
#' @examples
#' drug_test(drug_scr_1)

drug <- function(col) {
  col_value <-  case.(col == 0, "Not Tested",
                      col == 1, "None",
                      col == 2, "Cocaine",
                      col == 3, "PCP",
                      col == 4, "Benzodiazepines",
                      col == 5, "Barbiturates",
                      col == 6, "Narcotics",
                      col == 7, "Amphetamines",
                      col == 8, "Mariguana",
                      col == 9, "Tricycloids",
                      default = "Unknown")
  return(col_value)
}
