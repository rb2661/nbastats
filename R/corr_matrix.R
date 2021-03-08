#' corr matrix function
#'
#' This function creates a correlation matrix of all continuous numeric variables in a given year for the nba dataset
#' @param year What year are you interested in? Defaults to 1990.
#' @keywords matrix, correlation
#' @export
#' @examples
#' corr_matrix()



corr_matrix <- function(year=1990) {
  nba_yr <- nba %>%
    filter(Year == year)
  nba_num_var <- select_if(nba_yr, is.numeric)
  cor(nba_num_var)
}
