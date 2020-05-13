#' Create Normalized Procedure Data
#'
#' @param .data USe the PTOS_DF
#'
#' @return Normalized dataframe
#' @export
create_proc_df <- function(.data) {
  .data <- .data %>%
    select.(id, starts_with.('proc_')) %>%
    select.(id,
            ends_with.('da'),
            ends_with.('ta'),
            ends_with.('pr'),
            ends_with.('lc')) %>%
    pivot_longer.(cols = -id,
                  values_to = "values",
                  values_drop_na = TRUE) %>%
    filter.(values != "NA") %>%
    separate.(name,
              into = c("type", "serial", "desc"),
              sep = "_") %>%
    pivot_wider.(
      .,
      names_from = desc,
      values_from = values,
      values_fn = list
    ) %>%
    mutate.(
      date = as.character(da),
      time = as.character(ta),
      proc_code = as.character(pr),
      loc_desc = proc_lc(as.character(lc)),
      proc_code = as.double(proc_code),
      data_source = "procedure"
    ) %>%
    left_join.(procedures_data, by = "proc_code") %>%
    rename.(code_cd = proc_code,
            chapter_desc = proc_chapter,
            subchapter_desc = proc_subchapter,
            code_desc = proc_short_desc) %>%
    select.(id, date, time, loc_desc, code_cd, chapter_desc, subchapter_desc, code_desc, data_source)


  return(.data)
}
