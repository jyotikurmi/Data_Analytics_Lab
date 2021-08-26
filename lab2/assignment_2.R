# question no. 1
# loading the dataset in r
a <- read.csv("Dataset.csv",header = TRUE ,sep = ",")

data3 <- a

#replace na values in a particular column with the median of that column
data3$Age[is.na(data3$Age)]<-median(data3$Age, na.rm=TRUE)
data3$Salary[is.na(data3$Salary)]<-median(data3$Salary, na.rm=TRUE)

# encoding the categorical data

data3$Country = factor(data3$Country ,
levels = c('France','Spain','Germany'),
labels = c(1,2,3))
#encoding the target variable with 0 and 1
data3$Purchased = factor(data3$Purchased ,
                       levels = c('Yes','No'),
                       labels = c(0,1))
View(data3)

#scaling the dataset
data3$Country <- as.numeric(as.factor(data3$Country))
data3$Purchased <- as.numeric(as.factor(data3$Purchased))
data3 <- scale(data3, center = TRUE, scale = TRUE)
View(data3)
