
install.packages("devtools")
install.packages("roxygen2")

library("devtools")
library(roxygen2)

setwd("/Users/yi-chen.tsai/Desktop/r package")
create_package("NBAstats")

setwd(".") 
document()

setwd("..") 
install("NBAstats")


# dir.create("data/")
# setwd("./data")

# usethis::use_data(nba_stats)
