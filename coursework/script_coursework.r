# read the csv file and its data
data <- read.cvs(file='dataset.csv')
head(data)


library(ggplot2)

ggplot(data, aes(y= Height , X=Distance, fill=Wind.Direction)) + geom_boxplot() + facet_wrap (~ Group)

ggplot(data, aes(x=Group, y=Score.1)) + geom_boxplot()

ggplot(data, aes(x=Group, y=Score.2)) + geom_boxplot()


# USE HEIGHT as outlier : this is one outlier
ggplot(data, aes(x=Height)) + geom_histogram()

#  Use gender, offset and categorize as Gender: 
# offset is kind of level of accuracy; 
ggplot(data, aes(x=Gender, y=Offset, fill=Group)) + geom_boxplot()

# In this example, we remove some outliers: wE cPMPARE, Group and Height 
ggplot(data, aes(x=Group, y=Height, fill=Wind.Direction)) + geom_boxplot() + ylim(120, 200)


ggplot(data, aes(x=Group, y=Height, fill=Wind.Direction)) + geom_boxplot() + ylim(0, 120)

# Relationship between Gender and total scores and wind direction: Thids is 1
ggplot(data, aes(x=Gender, y=Score.1+Score.2, fill=Wind.Direction)) + geom_boxplot() + ylab("Final scores")

# Gender, total score, with limitation of the y lines. 
ggplot(data, aes(x=Gender, y=Score.1+Score.2, fill=Wind.Direction)) + geom_boxplot() + ylab("Total Score") + facet_wrap( ~ Group)

ggplot(data, aes(x=Gender, y=Offset, fill=Group)) + geom_boxplot()

# oTHER pattern
ggplot(data, aes(x=Wind.Direction, y=offset, fill=Group)) + geom_boxplot() + facet_wrap( Wind.Direction)

ggplot(data, aes(x=Angle, y=Distance)) + geom_point()
# Use Distance as outlier()
ggplot(data, aes(x=Distance, y=Score.1 + Score.2, color=Group, shape=Group)) + geom_point() + ylab("Total Score")

## GNENGA SOUMONA sECTION
ggplot(data, aes(x=Offset, y=Score.1, colour=Wind.Direction)) + geom_smooth() + facet_wrap(~ Wind.Direction)

ggplot(data, aes(x=Age, Score.2, fill=Wind.Direction)) + geom_histogram(stat="identity", position="dodge") + facet_wrap(~ Wind.Direction)

# PATTERN / OUTLIER
ggplot(data, aes(y=Group, x=Offset)) +geom_boxplot(aes(fill=Group))

ggplot(data, aes(y=Wind.Direction, x=offset)) + geom_boxplot(aes(fill=Group))

# Pattern: E and W wind dicrtes more on score 2

ggplot(data, aes(x=Score.2, fill=Wind.Direction)) + geom_bar()

#Outlier + pattern
ggplot(data, aes(x=Score.2, y=Offset, group=Group)) + geom_boxplot(aes(fill=Group))

# OUTLIER AND POSSIBLE pattern
ggplot(data, aes(x=Score.1, y=Offset, group=Group)) + geom_boxplot(aes(fill=Group))


# We can clearly notice the outliser presne on both sides of the graph
ggplot(data, aes(x=Distance, y=Score.1, color=Group, shape=Gender)) + geom_point()

#OTHEr rapresentation with outliers on both sides
ggplot(data, aes(x=Distance, y=Age, color=Group)) + geom_point()

ggplot(data, aes(x=Distance, y=age, group=Group)) + geom_point()

ggplot(data, aes(x=Distance, y=Angle)) + geom_point()

# This is a ptattne, E and W directions more on score2
ggplot(data, aes(x=Score.2, fill=Wind.Direction)) + geom_bar() +  facet_wrap(~ Wind.Direction)

ggplot(data, aes(x=Wind.Direction, y=Offset)) + geom_boxplot(aes(fill=Group)
                                                             
                             ggplot(data, aes(y=Height, x=Score.2, color=Group)) + geom_boxplot()