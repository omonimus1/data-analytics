# read the csv file and its data
data <- read.cvs(file='dataset.csv')
head(data)


library(ggplot2)

ggplot(data, aes(y= Height , X=Distance, fill=Wind.Direction)) + geom_boxplot() + facet_wrap (~ Group)

ggplot(data, aes(x=Group, y=Score.1)) + geom_boxplot()

ggplot(data, aes(x=Group, y=Score.2)) + geom_boxplot()



# USE HEIGHT as outlier

ggplot(data, aes(x=Height)) + geom_histogram()

# Use Distance as outlier()
ggplot(data, aes(x=Distance, y=Score.1 + Score.2, color=Group, shape=Group)) + geom_point() + ylab("Total Score")