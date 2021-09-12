#q1
random_vector <- c(runif(20, 0 , 100)) 
summary(random_vector) 
unique_vector <- unique(random_vector)
probabilities <- pnorm(random_vector, mean = 50.453, sd = 5)
barplot(probabilities,
        main = " Random vector Vs Probabilites",
        xlab = "random vector",
        ylab="probabilities",
        names.arg = unique_vector, col = "blue")
#q2
data <- table(random_vector)
cumulative_frequency <- cumsum(data)
cumulative_frequency
cf <- data.frame(data, cumulative_frequency)
plot(random_vector, cumulative_frequency, pch = 19, cex = 2, col ="red")
#q3
x<-0:10
y<-dbinom(0:10,10,0.16)
data.frame("Prob"=y,row.names=x) 
plot(0:10,dbinom(0:10,10,0.16),,type='h',xlab="",ylab="Probability",
     sub="Number of kids with blue eyes")
par(mfrow=c(2,2))
plot(0:10,dbinom(0:10,10,0.05),type='h',xlab="",ylab="Prob", sub="p=0.05") 
plot(0:10,dbinom(0:10,10,0.2),type='h',xlab="",ylab="Prob", sub="p=0.2")
plot(0:10,dbinom(0:10,10,0.5),type='h',xlab="",ylab="Prob", sub="p=0.5")
plot(0:10,dbinom(0:10,10,0.8),type='h',xlab="",ylab="Prob", sub="p=0.8")
#q4
z <- c(0:10)
possion_distribution <- dpois(z,10,0.2)
plot(z, possion_distribution, main="Possion distribution", 
     type = "o", col="red", cex= 2, pch=15)

