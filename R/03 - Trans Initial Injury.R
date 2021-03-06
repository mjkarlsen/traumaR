#' Create Normalized Injury Data
#'
#' @param .data USe the PTOS_DF
#'
#' @return Normalized dataframe
#' @export
create_injury_df <- function(.data){

  .data %>%
    select.(
      id,
      inj_date_a,
      inj_time_a,
      eda_date_a,
      eda_time_a,
      e849_x,
      e_code) %>%
    left_join.(traumaR::injury_data, by = c("e_code" = "injury_code")) %>%
    mutate.(
      date = ifelse.(is.na(inj_date_a) | inj_date_a == 'NA', eda_date_a, inj_date_a),
      time = ifelse.(is.na(inj_time_a) | inj_time_a == 'NA', eda_time_a, inj_time_a),
      loc_desc = injury_loc(e849_x),
      code_cd = e_code,
      chapter_desc = injury_chapter,
      subchapter_desc = injury_subchapter,
      code_desc = injury_desc_short,
      data_source = "injury"
    ) %>%
    select.(
      id,
      date,
      time,
      loc_desc,
      code_cd,
      chapter_desc,
      subchapter_desc,
      code_desc,
      data_source
    ) %>%
    slice.(1, by = id)
}
