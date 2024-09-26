#' Add indicators for charger types to dataframe of ev stations
#'
#' @param ev_df Dataframe of ev stations with "ev_connector_types" column
#'
#' @return ev_df Dataframe of ev stations with added columns indicating presence of charger connection types
#' @export
#'
afdc_add_connector_type_indicators <- function(ev_df){

  ev_df <- ev_df |>
    dplyr::rowwise() |>
    dplyr::mutate(has_J1772      = dplyr::if_else("J1772" %in% ev_df$ev_connector_types, 1, 0)) |>
    dplyr::mutate(has_J1772COMBO = dplyr::if_else("J1772COMBO" %in% ev_df$ev_connector_types, 1, 0)) |>
    dplyr::mutate(has_CHADEMO    = dplyr::if_else("CHADEMO" %in% ev_df$ev_connector_types, 1, 0)) |>
    dplyr::mutate(has_TESLA      = dplyr::if_else("TESLA" %in% ev_df$ev_connector_types, 1, 0)) |>
    dplyr::mutate(has_NEMA520    = dplyr::if_else("NEMA520" %in% ev_df$ev_connector_types, 1, 0)) |>
    dplyr::mutate(has_NEMA515    = dplyr::if_else("NEMA515" %in% ev_df$ev_connector_types, 1, 0)) |>
    dplyr::mutate(has_NEMA1450   = dplyr::if_else("NEMA1450" %in% ev_df$ev_connector_types, 1, 0))

  return(ev_df)

}
