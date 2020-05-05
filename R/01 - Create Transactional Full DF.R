#' Combines all the transactional data together
#'
#' @param .data Pulls the clean pto_df
#'
#' @return  Transactional dataframe
#' @export
create_full_trans <- function(.data){

  .proc_df <- create_proc_df(.data)
  .diag_df <- create_diag_df(.data)
  .comp_df <- create_complic_df(.data)

  # Row Bind all the transaction data together
  .full_trans <- rbind.data.frame(.proc_df, .diag_df)
  .full_trans <- rbind.data.frame(.full_trans, .comp_df)

  .full_trans <- .full_trans %>%
    arrange.(id, date)

  #return(.full_trans)

  assign(paste("trans_full_df"), data.frame(.full_trans), envir = .GlobalEnv)

}
