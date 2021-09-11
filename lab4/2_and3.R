#2
library(MASS)
plot(density(Animals$body))
logbody <- log(Animals$body)
plot(density(logbody))
av <- mean(logbody)
sdev <- sd(logbody)
xval <- pretty(c(av - 3 * sdev, av + 3 * sdev), 50)
lines(xval, dnorm(xval, mean = av, sd = sdev))

#3
y <- rnorm(100)
plot(density(y), type = "l")
av <- numeric(100)
for (i in 1:100) 
  {
  av[i] <- mean(rnorm(4)) 
  
} 
lines(density(av), col = "red")
for (i in 1:100) 
{
  av[i] <- mean(rnorm(9)) 
} 
lines(density(av), col = "pink")
for (i in 1:100) 
{
  av[i] <- mean(rnorm(25)) 
} 
lines(density(av), col = "blue")
