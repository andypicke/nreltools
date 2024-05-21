#' Fetch processed EV charging station data from NREL API
#' @param fuel_type Fuel type, default = "ELEC"
#' @param wh_state State to get data for
#' @param limit Number of rows to return; default is "all"
#' @returns df Dataframe with EV charging station data
#' @export


afdc_ev_get_stations <- function(fuel_type = "ELEC", wh_state = "CO", limit = "all"){

  req_url <- afdc_construct_query_url(fuel_type = fuel_type, wh_state = wh_state, limit = limit)

  df <- afdc_get_api_request(query_url = req_url, api_key = Sys.getenv("NREL_DEVELOPER_API_KEY"))

  df <- afdc_process_ev_stations(df)

}
