#' corr matrix function
#'
#' This function creates a correlation matrix of all continuous numeric variables in a given year for the nba dataset
#' @param year What year are you interested in? Defaults to 1990.
#' @keywords matrix, correlation
#' @export
#' @import dplyr
#' @importFrom magrittr %>%
#' @examples
#' corr_matrix()



corr_matrix <- function(year=1990) {
  library(magrittr, "%>%")
  nba_yr <- nba %>%
    dplyr::filter(Year == year)
  nba_num_var <- select_if(nba_yr, is.numeric)
  cor(nba_num_var)
}
