# Question 5 : WAP in R to find the multiplication table from (1 to 10)
m <- 1
for (x in 1:10){
  m <- m * x
}
print(paste("The multiplicatioin is :",m))
