#' Construct URL for AFDC API data request
#' @param fuel_type Fuel type, default = "ELEC"
#' @param wh_state State to get data for
#' @param limit Number of rows to return; default is "all"
#' @returns query_url URL for API request
#' @export

afdc_construct_query_url <- function(fuel_type = "ELEC",
                                     wh_state = "CO",
                                     limit = "all"){

  # base url for AFDC alternative fuel stations API
  target <- "https://developer.nrel.gov/api/alt-fuel-stations/v1"

  # put together api request
  api_path <- paste0(".json?&fuel_type=", fuel_type,
                     "&state=", wh_state,
                     "&limit=", limit)

  req_url <- paste0(target, api_path)

}
