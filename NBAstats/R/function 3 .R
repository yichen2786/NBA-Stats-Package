#' A NBA Statistics Function to identify the correlation matrix
#'
#' This function will yield all the numerical values per selected year.
#' @param year in which you want to know the correlation matrix
#' @keywords correlation matrix
#' @export
#' @examples



#function 3

library(dplyr)
library(tidyverse)
library(roxygen2)

df <- read.csv("/Users/yi-chen.tsai/Desktop/gr5072-homework-5-yichen2786/data/raw/Seasons_Stats_NBA.csv")


correlation_numeric <- function(z) {
  year <- filter(df, Year == z)
  numeric_variables <- year[, sapply(year, is.numeric)]
  return(cor(numeric_variables))
}

correlation_numeric(1996)
