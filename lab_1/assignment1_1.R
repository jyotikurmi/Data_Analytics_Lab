# Question 1 : WAP to print the greatest of three numbers
# taking the user input
first_number <- as.integer(readline(prompt = "Enter the first number :"))

second_number <- as.integer(readline(prompt = "Enter the second number :"))

third_number <- as.integer(readline(prompt = "Enter the third number :"))

# code for finding the greatest number
if (first_number > second_number && first_number > third_number){
  print(paste("The greatest of three numbers is: ", first_number))
} else if (second_number > first_number && second_number > third_number) {
  print(paste("The greatest of three number is :", second_number))
} else {
  print(paste("The greatest of three number is : ", third_number))
}
