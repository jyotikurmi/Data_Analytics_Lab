# loading the iris dataset
library(RColorBrewer)
# read the csv file
a <-read.csv("iris.csv",header= TRUE, sep = ",")
par(mfrow=c(2,3))
barplot(iris$Petal.Length) 
barplot(table(iris$Species,iris$Petal.Length),col  = brewer.pal(3,"Set1")) 
boxplot(iris$Sepal.Length,col="Purple")
boxplot(iris$Sepal.Length~iris$Species,col=cm.colors(3))
plot(x=iris$Petal.Length,y=iris$Species)
