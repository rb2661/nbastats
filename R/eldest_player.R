#' eldest player function
#'
#' This function allows you find the oldest NBA player in a given year.
#' @param year What year are you interested in? Defaults to 1990.
#' @keywords eldest
#' @export
#' @examples
#' eldest_player()

eldest_player <- function(year=1990) {
  library(magrittr, "%>%")
  nba %>%
    dplyr::filter(Year == year) %>%
    dplyr::select(Player, Age) %>%
    dplyr::arrange(desc(Age)) %>%
    dplyr::top_n(1) %>%
    dplyr::filter(row_number()==1)
}
