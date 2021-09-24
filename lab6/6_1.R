data <- read.csv("Iris.csv")
head(data,6)

library('ggplot2')
ggplot(data,aes(x=sepal_width, y=sepal_length,color=species)) + geom_point() + theme_minimal()
ggplot(data,aes(x=petal_width, y=petal_length,color=species)) + geom_point() + theme_minimal()
library(ClusterR)
library(cluster)
library(amap)
k<-10
v <-1:k
iris_1 <- data[, -5]
set.seed(240)
AQ<-na.omit(iris_1)#omitting NA rows
AQ

#par(mfrow=c(2,2))
KM_E_1<- Kmeans(AQ, centers = k,iter.max = 30, nstart = 20, method="euclidean")
KM_E_1
KM_E_1$cluster
plot(AQ[c("sepal_width", "sepal_length")], 
     col = KM_E_1$cluster, 
     main = "K-means with 30 iterations")




library(factoextra)
library(NbClust)

# Elbow method
fviz_nbclust(data[,-5], kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2) + # add line for better visualisation
  labs(subtitle = "Elbow method")
icluster <- kmeans(AQ,4,nstart = 20)
table(iris$Species,icluster$cluster)


library("cluster")
yclus <-icluster$cluster
clusplot(AQ,
         yclus,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 0,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Clusters of Iris Flowers with Euclidean Distance")
)




KM_E_1<- Kmeans(AQ, centers = k,iter.max = 30, nstart = 20, method="manhattan")
KM_E_1
KM_E_1$cluster
plot(AQ[c("sepal_width", "sepal_length")], 
     col = KM_E_1$cluster, 
     main = "K-means with 30 iterations")


library(factoextra)
library(NbClust)

# Elbow method
fviz_nbclust(data[,-5], kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2) + # add line for better visualisation
  labs(subtitle = "Elbow method")
icluster <- kmeans(AQ,4,nstart = 20)
table(iris$Species,icluster$cluster)

library("cluster")
yclus <-icluster$cluster
clusplot(AQ,
         yclus,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 0,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Clusters of Iris Flowers with manhattan Distance")
)
