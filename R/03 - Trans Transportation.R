
#' Create Normalized Transportation Data
#'
#' @param .data USe the PTOS_DF
#'
#' @return Normalized dataframe
#' @export
create_transportation_df <- function(.data){
  .data %>%
    select.(id, starts_with.("pre_")) %>%
    pivot_longer.(cols = -id) %>%
    drop_na.() %>%
    mutate.(type_col = ifelse.(str_detect(name, "_ta"),'time', 'date'),
            loc_desc = case.(name == 'pre_1_a_da', 'transport arrive at scene',
                             name == 'pre_1_a_ta', 'transport arrive at scene',
                             name == 'pre_1_d_da', 'transport dispatch',
                             name == 'pre_1_d_ta', 'transport dispatch',
                             name == 'pre_1_l_da', 'transport leave scene',
                             name == 'pre_1_l_ta', 'transport leave scene',
                             name == 'pre_r_a_da', 'interhospital transport arrive at referring facility',
                             name == 'pre_r_a_ta', 'interhospital transport arrive at referring facility',
                             name == 'pre_r_d_da', 'interhospital transport dispatch',
                             name == 'pre_r_d_ta', 'interhospital transport dispatch',
                             name == 'pre_r_l_da', 'interhospital transport leave referring facility',
                             name == 'pre_r_l_ta', 'interhospital transport leave referring facility',
                             name == 'pre_s_a_da', 'scene provider arrive at scene',
                             name == 'pre_s_a_ta', 'scene provider arrive at scene',
                             name == 'pre_s_d_da', 'scene provider dispatch',
                             name == 'pre_s_d_ta', 'scene provider dispatch',
                             name == 'pre_s_l_da', 'scene provider leave scene',
                             name == 'pre_s_l_ta', 'scene provider leave scene'),
            code_desc = "transport") %>%
    select.(-name) %>%
    pivot_wider.(names_from = type_col, values_from = value) %>%
    mutate.(code_cd = "NA",
            data_source = code_desc,
            date = as.character(date),
            time = as.character(time)) %>%
    select.(id, date, time, loc_desc, code_cd, code_desc, data_source)

}
