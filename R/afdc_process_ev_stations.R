#' Process AFDC station data for ev charging only
#' @param ev_df Dataframe of EV charging station data as returned from AFDC API
#' @returns ev_df Dataframe with only EV-related fields
#' @export

afdc_process_ev_stations <- function(ev_df){
  # filter out non-EV related fields
  ev_df <- ev_df |>
    dplyr::select(-dplyr::starts_with("lng")) |>
    dplyr::select(-dplyr::starts_with("cng")) |>
    dplyr::select(-dplyr::starts_with("lpg")) |>
    dplyr::select(-dplyr::starts_with("hy")) |>
    dplyr::select(-dplyr::starts_with("ng")) |>
    dplyr::select(-dplyr::starts_with("e85")) |>
    dplyr::select(-dplyr::starts_with("bd")) |>
    dplyr::select(-dplyr::starts_with("rd")) #|>
#    dplyr::filter(status_code == "E")

  # change date field to date type and add a year opened variable
  ev_df$open_date <- lubridate::ymd(ev_df$open_date)
  ev_df$open_year <- lubridate::year(ev_df$open_date)

  return(ev_df)

}
