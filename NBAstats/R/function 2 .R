#' A NBA Statistics Function
#'
#' This function allows you to find out about the older player per selected year.
#' @param year in which you would like to know the oldest player
#' @keywords oldest player's age
#' @value
#' @export
#' @examples
#' oldest_player()

#function 2
library(dplyr)
library(tidyverse)
library(roxygen2)


oldest_player <- function(y) {
  year <- filter(df, Year == y)
  player_oldest <- filter(year, Age == max(year$Age))
  return(top_n(player_oldest, 1))
}

oldest_player(2000)
