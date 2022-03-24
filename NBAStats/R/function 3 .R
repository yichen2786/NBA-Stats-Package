#' A NBA Statistics Function
#'
#' This function will yield all the numerical values per selected year.
#' @param year in which you want to know the correlation matrix
#' @keywords correlation matrix
#' @value
#' @examples
#' correlation_numeric()


#function 3

library(dplyr)
library(tidyverse)
library(roxygen2)


correlation_numeric <- function(z) {
  year <- filter(df, Year == z)
  numeric_variables <- year[, sapply(year, is.numeric)]
  return(cor(numeric_variables))
}

correlation_numeric(1996)
