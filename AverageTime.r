library(ggplot2)
data <- read.csv("NewData/Session-time-average-by-day-of-the-week-list.csv")
dataframe <- data.frame( days = data[3:8, colnames(data) %in% c('ï..Report')],
                         avgtime = data[3:8, colnames(data) %in% c('Filters')])
print(dataframe)

print(as.matrix(dataframe[1:6,2]))

p<-ggplot(dataframe, aes(x=days, y=avgtime)) +
  geom_bar(stat="identity", fill="steelblue" )
p
