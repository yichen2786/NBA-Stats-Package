#' A NBA Statistics Function
#'
#' This function allows you to find out interesting data point about players per year.
#' @param year that you want to know a player's free throw percentage rate
#' @keywords free throw
#' @value
#' @export
#' @examples
#' freethrow_percentage()



#Function 1
library(dplyr)
library(tidyverse)
library(roxygen2)

df <- read.csv("/Users/yi-chen.tsai/Desktop/gr5072-homework-5-yichen2786/data/raw/Seasons_Stats_NBA.csv")

x <- df$Year

freethrow_percentage <- function(x) {
  df %>% select(FT.) %>%
    slice(1:10)
}

freethrow_percentage(2000)
