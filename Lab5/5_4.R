# loading Iris dataset
data("iris")
head(iris,8)
# 2D plot between petal width and petal length
plot(iris$Petal.Length , iris$Petal.Width, xlab = 'Petal lenght', ylab ='Petal Width')
setosa<-iris[iris$Species == "setosa", c("Petal.Length", "Petal.Width")];
versicolor<-iris[iris$Species == "versicolor", c("Petal.Length", "Petal.Width")];
virginica<-iris[iris$Species == "virginica", c("Petal.Length", "Petal.Width")];library(philentropy);

#setosa & versicolor
euc_set_ver_pl <-distance(rbind(setosa$Petal.Length,versicolor$Petal.Length), method = "euclidean");
euc_set_ver_wl <-distance(rbind(setosa$Petal.Width,versicolor$Petal.Width), method = "euclidean");

print(paste0("The euclidean distance between setosa & versicolor  ",euc_set_ver_pl," and and petal width is ",euc_set_ver_wl));



#versicolor & virginica
euc_ver_vir_pl <-distance(rbind(versicolor$Petal.Length,virginica$Petal.Length), method = "euclidean");
euc_ver_vir_wl <-distance(rbind(versicolor$Petal.Width,virginica$Petal.Width), method = "euclidean");

print(paste0("The euclidean distance between virginica & versicolor  ",euc_ver_vir_pl," and and petal width is ",euc_ver_vir_wl));



#virginica & setosa
euc_set_vir_pl <-distance(rbind(setosa$Petal.Length,virginica$Petal.Length), method = "euclidean");
euc_set_vir_wl <-distance(rbind(setosa$Petal.Width,virginica$Petal.Width), method = "euclidean");

print(paste0("The euclidean distance between setosa & virginica",euc_set_vir_pl," and petal width is ",euc_set_vir_wl));
