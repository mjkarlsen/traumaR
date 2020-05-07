#' Create Normalized Injury Data
#'
#' @param .data USe the PTOS_DF
#'
#' @return Normalized dataframe
#' @export
create_injury_df <- function(.data){

  .data %>%
    select.(id, inj_date_a, inj_time_a, e849_x, e_code) %>%
    mutate.(date = ifelse(!is.na(inj_date_a), as.character(inj_date_a), NULL),
            time =  ifelse(!is.na(inj_time_a), as.character(inj_time_a), NULL),
            loc_desc = injury_loc(e849_x),
            code_cd = e_code,
            code_desc = e_code(e_code),
            data_source = "injury") %>%
    select.(id, date, time, loc_desc, code_cd, code_desc, data_source) %>%
    slice.(1, by = id)

}
