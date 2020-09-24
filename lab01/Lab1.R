# PRACTICAL ONE: USING R FOR DATA VISUALISATION

# Comments in R are proceeded by the hash/sharp symbol. If loaded in RStudio, all
# of the data will be ready for use straight away.

# First off, watch the video https://www.youtube.com/watch?v=lVKMsaWju8w,
# for an introduction to the syntax of R. The syntax is fairly straightforward, and we won't
# be using too many "fancy" structures.

# Remember to look at the link on Moodle which shows you how to install packages when you have
# no admin rights.


# BEFORE YOU START REMEMBER THE FOLLOWING:
# 1. The video above will really help get you starting with RStudio if you've not used it before
# 2. The best way to learn what functions in R do is to look for them in the help tab search box
# 3. Don't just copy the code! Change it, mess with it, alter it! Then you can see what it does


# Before we start properly: R allows us to apply the same mathematical function
# to a set of numbers very easily. Instead of using for loops or similar, we can
# simply apply a mathematical function to a table and it will be applied to each cell.
# Here is a quick example. Let's first create a set of numbers:

sequence <- seq(0, 100, length=11)

# Writing a variable name prints it to the console. Check it appears like the following:
# '[1]   0  10  20  30  40  50  60  70  80  90 100'

sequence

# If we now want to divide all numbers by ten, we can do the following:

sequence2 <- sequence / 10

# Check this new sequence to ensure you get '[1]  0  1  2  3  4  5  6  7  8  9 10'
# This should work with all basic arithmetic arguments, so try the following and make sure what you get makes sense!

sequence3 <- sequence2 * 11
sequence3 <- sequence3 - 2

# You can also check what a function will output by typing it in the console without assigning it...
sequence / 10

###### QUESTION 0 #########
# Start with the sequence you created above using the command 'sequence <- seq(0, 100, length=11)'
# Convert this into a new variable called sequence4 where all the numbers are
# now powers of 2, using operators similar to above. This can be done in two steps
# and should end up looking like this  '[1]    1    2    4    8   16   32   64  128  256  512 1024'

sequence4 = 2^(0:10)
sequence4
# It will print: '[1]    1    2    4    8   16   32   64  128  256  512 1024'

# Create a table and print it
"""
In this case, by default there will a scale on the y axes from 0 to 100
Apples will have 53 points, banana: 12, cherries: 102 and Dates: 88
"""
simtab <- table(c(rep("Apples",53),rep("Bananas",12),rep("Cherries",102),rep("Dates",88)))
# This barplot uses the base graphics package of R.
barplot(simtable)
 

# The following line turns our previous bar chart data into a probability data, by dividing each frequency
# by the total. 

simtabp <- simtab/(53+12+102+88)

# This is a little unwieldy, however, and requires we have already counted how many items we have
# in our data set previously. Instead, we can use the sum() function to get R to do the adding for us.
# For example:

sum(5, 10, 4)

# We can also put functions which output lists into sum(), like below:

testsum <- sum(seq(0, 100, length=11))


###### QUESTION 1 #########
# Calculate the same values as simtabp from before, but using the sum() function instead.
# Make sure you have no hardcoded numbers (i.e. no (53+12+102+88)), and store it in a new variable called simtabp2.

simtabo2 = sum (sintab)

# This next line will draw the probability distribution, using the base graphics package.
# This is really important, as you will be using this function quite a bit in R!

 barplot(simtabProbability)


###### QUESTION 2 #########
# Create a new simple table, called whatever you want, and put some numbers inside it. It must reflect
# categorical data, just like simtab did. Next, create a barplot of it, and a probablilty distribution bar plot. 


# Random table example
sportTab <- table(c(rep("Football", 60), rep("swimming", 54), rep("Golf", 30)))
# Print the barplot
barplot(sportTab)
# Create a probability distribution 
sportProbability <- sportTab / sum(sportTab)
# Print the probability distribution bar plot
barplot(sportProbability)

### These are some DISCRETE probability distributions.


# BINOMIAL DISTRIBUTION
# rbinom(t,n,p) creates t random binomial variables, each representing the number of successes out of n
# trials, where the probablility of success in any given trial is p.

# 10000 RVs, n=10, p=0.1
xbin <- rbinom(10000,10,0.1)  
tabbin <-table(xbin)
tabbinp <- tabbin/10000
barplot(tabbin) # from the command line to draw this
barplot(tabbinp) # for the probability distribution

####### QUESTION 3 #########
# Simulate, using the above rbinom pattern, the number of 2s that appear when a fair die is thrown 15 times.
# Perform 15000 simuations, and plot the results.


# POISSON DISTRIBUTION
# rpois(t,lam) creates t random Poisson variables, each representing the number of successes occuring during a 
# time period, when an average of lam successes are expected.

# 10000 RVs, lambda = 4
xpois <- rpois(10000,4)
tabpois <- table(xpois)
tabpoisp <- tabpois/10000
barplot(tabpois) # from the command line to draw this
barplot(tabpoisp) # for the probability distribution


# UNIFORM DISTRIBUTION
# runif(t,min,max) produces t random uniform variables, when the minimum value each variable can be is
# min, and the maximum value each variable can be is max. The ceiling function is used because runif is a 
# continuous function (i.e. runif(1,0,6) could return 3.4246, for example). The ceiling function takes the next
# integer higher than the supplied number. (In the example, ceiling(3.4246) would return 4)

# 10000 RVs, min = 1, max = 6
xunif <- ceiling(runif(10000,0,6))
tabunif <- table(xunif)
tabunifp <- tabunif/10000

# barplot(tabunif) from the command line to draw this
# barplot(tabunifp) for the probability distribution



##### Spotting outliers and missing data is only possible when you know what the data
# are supposed to look like. In the examples below, it is obvious that something has gone wrong.


# MISSING DATA
# The value of 2 is missing

xmiss <- c(rep(1,1000),rep(2,1),rep(3,1000),rep(4,1000),rep(5,1000),rep(6,1000))
tabxmiss <- table(xmiss)
tabxmissp <- tabxmiss/5001

# barplot(tabxmiss) from the command line to draw this
# barplot(tabxmissp) for the probability distribution


# OUTLIERS
# Massively bump up the value of 10 in tabpois

tabpois2 <- tabpois # make a copy
tabpois2[11] <- 2000 # replace the 11th element of the table (i.e. X=10) with 2000

# barplot(tabpois2) from the command line to draw this


####### Here are some CONTINUOUS data distributions.

# NORMAL DISTRIBUTION

# rnorm(t,mu,sd) creates t normal random variables, each with mean mu and standard deviation sd.
xnorm <- rnorm(10000,150,25) # mean 150, sd 25

# hist(xnorm) will draw the histogram
# hist(xnorm,breaks=100) will draw the histogram with 100 bins


######### QUESTION 4 ###############
# Create your own sample of 5000 normal variables, representing whatever population you wish. The values must
# be continuous. Draw a histogram of your sample, and then again forcing R to use 50 bins.


# Since we are using continuous data, we should really use probability distributions, rather than histograms.
# The following commands can be used to draw these normal distributions. dnorm is the distribution for the normal, 
# and the first parameter is telling R how much to draw.

height <- seq(50,250,length=200)
probden <- dnorm(height,150,25)
# plot(height,probden,type="l") will draw the line version between 0 and 300

# boxplot(xnorm) will draw the box and whisker plot


# SKEWED ONE: F

# You don't really need to worry about the F-distribution, it is just to show a skewed distribution.
xf1 <- rf(10000,5,2) # too many repeats just gives large values
xf2 <- rf(10,5,2)
# hist(xf1,xlim=c(0,7),breaks=30000)
# boxplot(xf2)

len <- seq(0,5,length=100)
probdenf <- df(len,5,2)
# plot(len,probdenf,type="l")



######## NOTES ##########
# Note the pattern, rname(t,...) produces t random variables drawn from the distribution name.
# So, rnorm was normal, rbinom was binomial, rf was F, rcauchy is the Cauchy distribution, and so on.
# For more info about what is available,
# see http://meredithfranklin.github.io/R-Probability-Distributions.html


###### 2-d DATA

# Most of the time, you'd just import data as csv files. We're going to do it by hand.

# discrete vs discrete: two-way tables

# byrow=TRUE is telling the matrix function that the numbers are describing the rows, not the columns
contable <- matrix(c(12,8,16,4,3,5,6,9,12),ncol=3,byrow=TRUE)
colnames(contable) <- c("Golf","Football","Swimming")
rownames(contable) <- c("Apples","Pears","Carrots")

# this line is needed since the barplot function expects a table, not a matrix.
contable <- as.table(contable)

# barplot(contable,legend.text=TRUE) produces a stacked bar chart, with columns along the bottom
# barplot(contable,beside=TRUE,legend.text=TRUE) produces a grouped bar chart


# t() given a matrix, return its transpose. 
contablet <- t(contable) 

# barplot(contablet,legend.text=TRUE) produces a stacked bar chart, with rows along the bottom
# barplot(contablet,beside=TRUE,legend.text=TRUE) produces a grouped bar chart


########  QUESTION 5 ##############
# Create your own two-way table, with categorical variables in each dimension, and draw it in 
# the two ways given above.


exampleBiTable <- matrix(c(12,34,11,6,16,72,78,89,21),ncol=3,byrow=TRUE)
colnames(contable) <- c("Palermo", "Catania", "Torino")
rownames(contable) <- c("Juventus", "Milan", "Frosinone")

exampleBiTable <- as.table(exampleBiTable)

exampleBiTable <- t(exampleBiTable)

# discrete vs cts: grouped data
# We will use boxplots to draw several continuous data sets, each of which represents a different category.
# We all know East Lothian is the best of the Lothians, and here is a demonstration of that fact.

lothians <- data.frame(East=rnorm(1000,185,12),Mid=rnorm(1000,160,13),West=rnorm(1000,140,10))
# draw
boxplot(lothians,ylab="Height (6)") 


# Now we will draw them as distributions on the same set of axes.
heightE <- seq(50,250,length=200)
probdenE <- dnorm(heightE,185,12)

probdenM <- dnorm(heightE,160,13)

probdenW <- dnorm(heightE,140,10)

# draw the one with lowest sd first
plot(heightE,probdenW,type="l",col="blue",xlab="Height",ylab="Density")
lines(heightE,probdenM,col="red")
lines(heightE,probdenE,col="green")


# cts vs cts

# We need to create some data. A normal way to do this is to introduce "jitter" into a random variable
# This stops data looking too clean.

xs <- seq(-4,4,length=200) # create 200 points between -4 and 4
jitter1 <- rnorm(200,0,0.5) # create some random jitter
jitter2 <- rnorm(200,0,0.25) # smaller jitter

# The right-hand side of each of the following shows what kind of curve we will expect. Here, it is linear.
ys1 <- xs + jitter1 # create the y-values 

# plot(xs,ys1)
# abline(lm(ys1~xs),col="red") 

# Here it is a squared curve. Lowess is more appropriate for curves than straight lines.
ys2 <- xs^2/2 + jitter1

plot(xs,ys2)
abline(lm(ys2~xs),col="red")
lines(lowess(xs,ys2),col="blue")

# Negative linear
ys3 <- jitter1 - xs

# plot(xs,ys3)
# abline(lm(ys3~xs), col="red")

# A sine curve
ys4 <- sin(xs) + jitter2

# plot(xs,ys4)
# abline(lm(ys4~xs), col="red")
# lines(lowess(xs,ys4),col="blue")


# outlier for cts vs cts

jitter3 <- c(rnorm(20,0,0.5),6,rnorm(179,0,0.5))

ys5 <- xs + jitter3

plot(xs,ys5)
abline(lm(ys5~xs),col = "red")


#### For multidimensional data, we need some fancy packages. ggplot2 will be the one which is most useful.

library(fmsb)
library(ggplot2)
library(lattice)
library(MASS)

# Multidimension

# 2 discrete vs 1 cts

# generate some data, instead of using a CSV file. It just means that we can guarantee certain patterns in the data
aam <- data.frame(Location=factor(0,label="A"),Time=factor(0,label="AM"),Weight=rnorm(100,50,5))
apm <- data.frame(Location=factor(0,label="A"),Time=factor(1,label="PM"),Weight=rnorm(100,58,2))

bam <- data.frame(Location=factor(1,label="B"),Time=factor(0,label="AM"),Weight=rnorm(100,60,3))
bpm <- data.frame(Location=factor(1,label="B"),Time=factor(1,label="PM"),Weight=rnorm(100,64,5))

cam <- data.frame(Location=factor(2,label="C"),Time=factor(0,label="AM"),Weight=rnorm(100,40,7))
cpm <- data.frame(Location=factor(2,label="C"),Time=factor(1,label="PM"),Weight=rnorm(100,42,5))


# rbind groups a bunch of rows together into a table
oysters <- rbind(aam,apm,bam,bpm,cam,cpm)


# We will investigate how to use ggplot, and what all this means, later in the semester

# ggplot(data=oysters,aes(y=Weight,x=Location,fill=Time)) + geom_boxplot()
# ggplot(data=oysters,aes(y=Weight,x=Time,fill=Location)) + geom_boxplot()
# ggplot(data=oysters,aes(y=Weight,x=Time,fill=Location)) + geom_boxplot() + facet_wrap(~Time,scales="free")


# 2 cts vs multi discrete

# generate some data. 3 different breeds of dog
flattie <- data.frame(Breed=factor(0,label="Flat coat"),Length=rnorm(100,100,10),Weight=rnorm(100,30,3))
brittany <- data.frame(Breed=factor(1,label="Brittany"),Length=rnorm(100,60,10),Weight=rnorm(100,18,2))
springer <- data.frame(Breed=factor(2,label="Springer"),Length=rnorm(100,75,10),Weight=rnorm(100,25,3))

dogs <- rbind(flattie,brittany,springer)

# ggplot(dogs,aes(x=Length,y=Weight,colour=Breed))+geom_point()
# ggplot(dogs,aes(x=Length,y=Weight))+geom_point() + facet_grid(~Breed)


# generate some more data. 3 different breeds of dog, each of which is split into male and female
flattieM <- data.frame(Breed=factor(0,label="Flat coat"),Gender=factor(0,label="Male"),Length=rnorm(100,100,10),Weight=rnorm(100,30,3))
brittanyM <- data.frame(Breed=factor(1,label="Brittany"),Gender=factor(0,label="Male"),Length=rnorm(100,60,10),Weight=rnorm(100,18,2))
springerM <- data.frame(Breed=factor(2,label="Springer"),Gender=factor(0,label="Male"),Length=rnorm(100,75,10),Weight=rnorm(100,25,3))

flattieF <- data.frame(Breed=factor(0,label="Flat coat"),Gender=factor(1,label="Female"),Length=rnorm(100,90,10),Weight=rnorm(100,28,3))
brittanyF <- data.frame(Breed=factor(1,label="Brittany"),Gender=factor(1,label="Female"),Length=rnorm(100,55,10),Weight=rnorm(100,15,2))
springerF <- data.frame(Breed=factor(2,label="Springer"),Gender=factor(1,label="Female"),Length=rnorm(100,70,10),Weight=rnorm(100,23,4))

dogsG <- rbind(flattieM,flattieF,brittanyM,brittanyF,springerM,springerF)

# ggplot(dogsG,aes(x=Length,y=Weight,colour=Breed,shape=Gender))+geom_point()
# ggplot(dogsG,aes(x=Length,y=Weight,colour=Gender,shape=Breed))+geom_point()
# ggplot(dogsG,aes(x=Length,y=Weight,colour=Breed)) + geom_point() + facet_grid(~Gender)
# ggplot(dogsG,aes(x=Length,y=Weight)) + geom_point() + facet_grid(~Gender*Breed)


# multi cts with some discrete

# generate some data

heightM <- rnorm(100,160,20)
jitterM <- rnorm(100,0,15)
weightM <- heightM/2+jitterM

# This will be medical data about height, weight resting heart-rate and life expectancy.
medical <- data.frame(Height=heightM,Weight=weightM,Risk=heightM/weightM,RestHR=rnorm(100,85,15),LE=rnorm(100,80,10))

# parallel co-ordinates
# parcoord(medical,var.label=TRUE,col=1+(0:100)%/%25)

# radar charts

# radarchart(medical,maxmin=FALSE,plty=1)
# radarchart(medical[1:5,],maxmin=FALSE,plty=1)



# individual radar charts
# HERE BE DRAGONS. This code needs to be executed line-by-line. The layout function needs to be called again
# afterwards, or any subsequent drawings are distorted.


# par(mar=c(1,2,2,1))
# layout(matrix(1:16,ncol=4))
# lapply(1:16, function(i){
#       radarchart(rbind(c(min(medical[,1]),min(medical[,2]),min(medical[,3]),min(medical[,4]),min(medical[,5])),medical[i,],c(max(medical[,1]),max(medical[,2]),max(medical[,3]),max(medical[,4]),max(medical[,5]))),maxmin=FALSE,cglty=3,plty=1)})



# matrix of scatter plots

# splom(medical)



######### IMPORTING DATA #######################

# Here we see what you can do when you import your own data. The given datafile (you will need to download it)
# contains various measurements of 302 crabs found in kelp, across four weeks in three different locations.

raw.data <- read.csv("KelpHoldfastData.csv")

# Make Weeks a factor. This is necessary because unless you tell R otherwise, any numbers are treated as numbers.
# In this case, we want them treated as categorical variables.
raw.data$Week <- as.factor(raw.data$Week)


###### QUESTION 6 ################
# Using the patterns above for multidimensional data, draw some pictures to investigate if there are 
# any patterns within the data. 



