# Question 6 : Simple calculator in R

subtraction <- function(){
  
  first_number <- as.integer(readline(prompt = "Enter the first number :"))
  second_number <- as.integer(readline(prompt = "Enter the second number :"))
  ans = first_number - second_number
  print(paste("result of subtraction :", ans))
  
}

addition <- function(){
  
  first_number <- as.integer(readline(prompt = "Enter the first number :"))
  second_number <- as.integer(readline(prompt = "Enter the second number :"))
  ans = first_number + second_number
  print(paste("result of addition :", ans))
  
}

# multiplication 
multiplication <- function(){
  
  first_number <- as.integer(readline(prompt = "Enter the first number :"))
  second_number <- as.integer(readline(prompt =  "Enter the second number :"))
  ans = first_number * second_number
  print(paste("result of multiplication :", ans))
}

# divison
divison <- function(){
 
  first_number<- as.integer(readline(prompt = " Enter the first number : "))
  second_number <- as.integer(readline(prompt = "Enter the second number : "))
  ans = first_number / second_number 
  print(paste("result of divison :", ans))
}

choice <- as.integer(readline(prompt = "Enter your Choice :"))
# condition
if (choice == 1){
  addition()
}else if(choice == 2) {
  subtraction()
} else if (choice == 3){
  multiplication()
} else if (choice == 4){
  divison()
} else {
  print("Invalid choice !")
}  
