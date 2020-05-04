#' Pay categories are based on HC4 standard categories (pg. 101)
#'
#' @param col A column in PTOS data that typically starts with PAY_CAT
#'
#' @return It translations of the code into human friendly values.
#'
pay_cat <- function(col) {
  col_value <-  case.(col == 1, "Medicare Indemnity",
                      col == 2, "Medicare Managed Care",
                      col == 3, "Medicaid Indemnity",
                      col == 4, "Medicaid Managed Care",
                      col == 5, "Commercial Insurer Indemnity",
                      col == 6, "Commercial Insurer Managed Care",
                      col == 7, "Other Third-party",
                      col == 8, "Self Pay",
                      default = "Unknown")
  return(col_value)
}
