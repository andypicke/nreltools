#' Make API GET request and return data
#' @param query_url URL for the API query
#' @returns df: data from the API response
#' @export

afdc_get_api_request <- function(query_url){

  resp <- httr::GET(url = query_url, httr::user_agent("nreltools"))

  if (resp$status_code != 200) {
    stop(paste("Warning, API call returned error code", resp$status_code))
  }

  resp_parsed <- jsonlite::fromJSON(httr::content(resp, as = "text",  encoding = "UTF-8"))

  df <- resp_parsed$fuel_stations


}
