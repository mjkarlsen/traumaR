#' Create Normalized Complications Data
#'
#' @param .data
#'
#' @return
#'
#' @examples

create_complic_df <- function(.data){

  .data %>%
    rename_with.(~ paste0(sub("complic_", "comp_0", .x),"_pr"), .cols = starts_with.('complic_')) %>%
    select.(id, starts_with.('comp_')) %>%
    select.(id,
            ends_with.('da'),
            ends_with.('pr'),
            ends_with.('lc')) %>%
    pivot_longer.(cols = -id,
                  values_to = "values",
                  values_drop_na = TRUE) %>%
    filter.(values != 'NA') %>%
    separate.(name, into = c("type", "serial", "desc"), sep = "_") %>%
    pivot_wider.(., names_from = desc, values_from = values, values_fn = list) %>%
    mutate.(pr = as.character(pr),
            da = as.character(da),
            lc = as.character(lc),
    ) %>%
    filter.(pr != 1) %>%
    mutate.(date = ifelse(!is.na(da), as.character(da), NULL),
            time =  NA,
            loc_desc = comp_lc(lc),
            code_cd = pr,
            code_desc = complic(pr),
            data_source = "complications") %>%
    select.(id, date, time, loc_desc, code_cd, code_desc, data_source)


}
