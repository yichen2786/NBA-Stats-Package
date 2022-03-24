#' A NBA Statistics Function to find out the oldest player
#'
#' This function allows you to find out about the older player per selected year.
#' @param year in which you would like to know the oldest player
#' @keywords oldest player's age
#' @export
#' @examples


#function 2
library(dplyr)
library(tidyverse)
library(roxygen2)

df <- read.csv("/Users/yi-chen.tsai/Desktop/gr5072-homework-5-yichen2786/data/raw/Seasons_Stats_NBA.csv")


oldest_player <- function(y) {
  year <- filter(df, Year == y)
  player_oldest <- filter(year, Age == max(year$Age))
  return(top_n(player_oldest, 1))
}

oldest_player(2000)
