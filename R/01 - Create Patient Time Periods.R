#' Create Patient Time Periods and Intervals
#'
#' @param .patient_df Patient Dataframe
#'
#' @return Dataframe of dates, times, and period intervals
#' @export
create_patient_timeframe <- function(.patient_df) {

  .patient_timeframe <- .patient_df %>%
    filter.(fltr_fasciotomy == T,
            fltr_procedure == T,
    ) %>%
    mutate_across.(ends_with.("_tm"), as.ITime) %>%
    mutate_across.(ends_with.("_dt"), mdy) %>%
    select.(
      id,
      arrival_dt,
      arrival_tm,
      forearm_fx_dt,
      forearm_fx_tm,
      fasciotomy_dt,
      fasciotomy_tm,
      discharge_dt,
      discharge_tm
    ) %>%
    drop_na.() %>%
    mutate.(arrival_dtime = ymd_hms(paste(arrival_dt, arrival_tm)),
            forearm_fx_dtime = ymd_hms(paste(forearm_fx_dt, forearm_fx_tm)),
            fasciotomy_dtime = ymd_hms(paste(fasciotomy_dt, fasciotomy_tm)),
            discharge_dtime = ymd_hms(paste(discharge_dt, discharge_tm)),
            total_stay_time = as.period(interval(arrival_dtime,  discharge_dtime)),
            arrival_to_forearm_time = as.period(interval(arrival_dtime, forearm_fx_dtime)),
            arrival_to_fasciotomy_time = as.period(interval(arrival_dtime, fasciotomy_dtime)),
            forearm_to_fasciotomy_time = as.period(interval(forearm_fx_dtime,  fasciotomy_dtime)),
            fasciotomy_to_discharge_time = as.period(interval(fasciotomy_dtime,  discharge_dtime)))

  # Create the patient_df dataframe
  assign(paste("patient_periods"), data.frame(.patient_timeframe), envir = .GlobalEnv)

}