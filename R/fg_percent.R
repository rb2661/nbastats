#' fg_percent function
#'
#' This function allows you to check Michael Jordan's field goal percentage in a given year.
#' @param year What year are you interested in? Defaults to 1990.
#' @keywords FG
#' @export
#' @examples
#' fg_percent()


fg_percent <- function(year=1990) {
  library(magrittr, "%>%")
  nba %>%
    dplyr::select(Player, Year, `FG%`) %>%
    dplyr::filter(Year == year, Player == 'Michael Jordan*')
}
