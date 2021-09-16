x <- seq(0,100,by = 1)  
# Creating the binomial distribution.  
y <- dbinom(x,50,0.5)  
plot(x,y)
