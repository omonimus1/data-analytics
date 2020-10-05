# Check if the library exisits
library(ggplot2)

# Use a builtin ggplot2 dataset
ggplot(diamonds)

## Set on y the label 'carat', and on the y the label 'price' 
ggplot(diamonds, aes(x=carat, y=price))


ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() + geom_smooth()
