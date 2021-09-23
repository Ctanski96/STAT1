#rm(list = ls())

library(ggplot2)
data = read.csv2("Labb/Lon.csv")
ggplot(data) +aes(x = Lon) + geom_histogram(fill = "orange", color = "black", bins = 10) + scale_y_continuous(breaks = seq(from = 0, to = 16, by = 2)) 


