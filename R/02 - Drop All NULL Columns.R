#' Drop All Columns that contain only NA's
#'
#' @param .data PTOS Data
#'
#' @return Cleaned PTOS Data
#' @export
drop_blank_columns <- function(.data) {

  complete_obs <- map_dfc.(.data, ~sum(is.na(.))) %>%
    rename_with.(~ sub(".x", "", .x)) %>%
    pivot_longer.(cols = everything.(), names_to = "column_names", values_to = "missing_obs") %>%
    mutate.(max_obs = max(missing_obs),
            prct_missing = missing_obs/max_obs)

  drop_column_list <- complete_obs %>%
    filter.(prct_missing >= 1) %>%  #drop columns that have no observations
    pull.(column_names)

#  message(paste("Dropping a few columns here... ", length(drop_column_list), "to be exact" ))
  message(paste("Dropping a few columns here... ", length(drop_column_list), "to be exact" ))

  .data <- .data %>%
    select.(-any_of.(drop_column_list))

  tidytable::inv_gc()

  return(.data)
}
