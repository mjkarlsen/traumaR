#' Drop All Columns that contain only NA's, <n/a>, <unk>, NULL, etc
#'
#' @param .data PTOS Data
#'
#' @return Cleaned PTOS Data
#'
#' @examples
drop_blank_columns <- function(.data) {

  total_obs <- .data %>%
    summarize.(count = n.()) %>%
    as.integer()

  complete_obs <- map_dfc.(.data, ~sum(is.na(.))) %>%
    rename_with.(~ sub(".x", "", .x)) %>%
    pivot_longer.(cols = everything.(), names_to = "column_names", values_to = "missings_obs") %>%
    mutate.(total_missing = missings_obs/total_observations)


  drop_column_list <- complete_obs %>%
    filter.(total_missing >= 1) %>%  #drop columns that have no observations
    pull.(column_names)

  .data <- .data %>%
    select.(-any_of.(drop_column_list))

  return(.data)
}
