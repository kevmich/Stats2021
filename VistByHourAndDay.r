library(ggplot2)
data <- read.csv("NewData/Visits-by-hour-and-day-of-the-week-list.csv")

dataframe <- data.frame(avgtime = data[, colnames(data) %in% c('Time')],
                        signInAndOut = data[, colnames(data) %in% c('sign.in.count')])
print(dataframe)

#print(as.matrix(dataframe[1:6,2]))

#p<-ggplot(dataframe, aes(x=days, y=avgtime)) +
#  geom_bar(stat="identity", fill="steelblue" )
#p

ggplot(dataframe, aes(x = avgtime, y = signInAndOut)) +
  geom_point()

