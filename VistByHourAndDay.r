library(ggplot2)
library(dplyr)
library(tidyverse)

data <- read.csv("NewData/Visits-by-hour-and-day-of-the-week-list.csv")

dataframe <- data.frame(avgtime = data[, colnames(data) %in% c('Time')],
                        signInAndOut = data[, colnames(data) %in% c('sign.in.count')])

arrange(dataframe, avgtime)
print(dataframe)

#as.POSIXct(dataframe$avgtime, format="%m/%d/%Y %I:%M:%S%p")

ggplot(dataframe, aes(x = avgtime, y = signInAndOut)) +
  geom_point()

