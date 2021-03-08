#' eldest player function
#'
#' This function allows you find the oldest NBA player in a given year.
#' @param year What year are you interested in? Defaults to 1990.
#' @keywords eldest
#' @export
#' @examples
#' eldest_player()

eldest_player <- function(year=1990) {
  nba %>%
    filter(Year == year) %>%
    select(Player, Age) %>%
    arrange(desc(Age)) %>%
    top_n(1) %>%
    filter(row_number()==1)
}
