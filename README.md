## Data Analytics


## Lab01

## Lba02

How to make a plot [GGPLOT2](http://r-statistics.co/ggplot2-Tutorial-With-R.html).
ggplot2 is the most elegant and aesthetically pleasing graphics framework available in R. 
It has a nicely planned structure to it. This tutorial focusses on exposing this underlying structure you can use to make 
any ggplot. But, the way you make plots in ggplot2 is very different from base graphics making the learning curve steep. 
So leave what you know about base graphics behind and follow along. You are just 5 steps away from cracking the ggplot puzzle.

```ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + geom_smooth()```
[!Lab2](media/lab2_layer.PNG)

The layers in ggplot2 are also called ‘geoms’.

## The Facets

In the previous chart, you had the scatterplot for all different values of cut plotted in the same chart. What if you want one chart for one cut?
[!ewew](theme.PNG)

What is cut in ggplot?

facet_wrap()

The **ggfortify package** makes it very easy to plot time series directly from a time series object, 
without having to convert it to a dataframe. The example below plots the AirPassengers timeseries in one step.


