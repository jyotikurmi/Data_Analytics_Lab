  
# Question 2 : Write a program in R to find and display the sum of N natural numbers
n <- as.integer(readline(prompt = " enter the number"))
sum_n <- 0
for (x in 1:n){
  sum_n <- sum_n + x

}
print(paste("The sum of n number is:",sum_n))
