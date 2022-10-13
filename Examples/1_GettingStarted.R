#' @title 1_GettingStarted.R
#' @description Data Anaytics introductory concepts
#' @author NMCG
#' @bugs None
#' @keywords data types, control flow, data structures


# automatically clear console - the string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")

#################### DATA TYPES ###########################
# data types - see https://www.tutorialspoint.com/r/r_data_types.htm
# interpreter automatically infers the data type at initialization

# integer
year <- 2022
year

#float-point
height <- 1.89
height

# logical
isRaining <- TRUE
isRaining

# character
title <- "Data Analytics"
title

strOut <- paste("The current year is", year)
print(strOut)

# complex
x <- 3i + 4

# integer
kids <- 5L

# operators

#arithmetic (+,-,/,*,%%, ^)
a <- 10
b <- 20
sum <- a + b; sum

c <- a ^ 2; c

remainder1 <- 2024 %% 4; remainder1
remainder2 <- 17 %% 5; remainder2
remainder3 <- 0 %% 5; remainder3
remainder4 <- 5 %% 17; remainder4

# leftward assignment - can be stacked
m <- n <- o <- 100

# operator precedence - use brackets
# operators and operands (e.g. 5 + 2 => 5 and 2 are operands)
theResult <- (a * 2.5) + (6.8/(10.1 - b)); theResult

# snake case
#process_data()

#################### TYPE CHECKING USING IS ###########################

#we can use is. with the appropriate function (e.g. is.numeric) to test data types
is.numeric(2.5)

is.numeric('2.5')

is.numeric(FALSE)

is.logical(TRUE)

is.logical(F)

is.logical("dkit")

is.character('a')

is.character("ann")

is.character(FALSE)

# we can use is on vector, list, array, matrix, data frame (see later)
ages <- c(19, 23, 34, 45, 61)
is.vector(ages)

#################### TYPE COERCION USING AS###########################

#convert a character string to a number
strAsNumeric <- as.numeric("2000")
result <- strAsNumeric/2; result

# convert a number to a character string
numericAsStr <- as.character(2000)
is.character(numericAsStr)


#################### CONTROL FLOW ###########################
# control flow or decision making - see https://www.tutorialspoint.com/r/r_decision_making.htm

today <- "thursday"

if(today == "Friday"){
  print("Great, its the weekend!")
}else{
  print("Not yet!")
}
  
#boolean expression - has a meaning and it evaluates to T|F
if(today == "Friday"){
  print("Great, its the weekend!")
}else if(today == "Sunday"){
  print("Not yet!")
}else{
  print("Not yet!")
}

x <- 19
y <- 10

# Logical - &&
# A  B  Output
# 0  0  0
# 0  1  0
# 1  0  0
# 1  1  1

if(x <= 20 && y == 10){
  print("Both conditions were met!")
}

# Logical - &&
# A  B  Output
# 0  0  0
# 0  1  1
# 1  0  1
# 1  1  1

x <- 19
y <- 100

if(x <= 20 || y == 10){
  print("One or more of the 2 conditions were met!")
}

z <- 50

if((x >= 10 && x <= 50) || z > 40){
  print("One or more of the 3 conditions were met!")
}


#################### LOOPS ###########################
# loops - see https://www.tutorialspoint.com/r/r_loops.htm

count <- 0
while(count <= 5){
  print(paste("count is", count))
  count <- count + 1
}

for(i in 1:10){
  print(i)
}

for(i in seq(0,20, by = 1.6)){
  print(i)
}

#vector - collection of same type
countries <- c("Aus", "Bel", "Can", "Den")

for(country in countries){
  print(country)
}


#################### IN-BUILT FUNCTIONS ###########################
#inbuilt functions (log10, log2, log, exp, abs) - see https://learnetutorials.com/r-programming/built-in-functions

# in-built functions 
logTest1 = log10(1000); logTest1   #log of 1000 to the base 10
logTest2 = log2(64); logTest2   #log of 64 to the base 2
logTest3 = log(64, exp(1)); logTest3 #user-defined base of e (natural log)
logTest4 = log(125, 5); logTest4 #user-defined base of 5

expTest1 = exp(1); expTest1  #exp = e = 2.718
powTest1 = 2^4; powTest1  #actually a mathematical operator
sqrtTest1 = sqrt(25); sqrtTest1

absTest1 = abs(-10.58); absTest1
absTest2 = abs(-1E6); absTest2
roundedPi = round(3.141598, 2)

# in-built constants
radius = 1
area1 = 2 * pi * (radius ^ 2)
paste("Circle area is ", area1)


#################### USER-DEFINED FUNCTIONS ####################
# user-defined functions - see https://www.tutorialspoint.com/r/r_functions.htm


# general form of a function is...
# function_name <- function(arg_1, arg_2, ...) {
#   Function body 
# }

# function definition
absDbl <- function(a){
  abs(2*a)
}

# invoking / invocation
result <- absDbl(-10); result


square <- function(x){  x * x }
theSquare = square(12); theSquare

logAbs <- function(someValue, base){  log(abs(someValue), base)}
logAbsResult = logAbs(-100, 10); logAbsResult

diff <- function(a,b){a - b}
theDiff = diff(4, 10); theDiff

# note that we can also use the parameter names (e.g. a, b) when passing a value
theDiff = diff(a = 4, b = 10); theDiff

# we can even pass the arguments out of order as long as we specify what parameter is being set
theDiff = diff(b = 4, a = 10); theDiff


#################### EXTERNAL USER-DEFINED FUNCTIONS ####################
# we can define functions in another R file or R package and access them but we must set the working directory first (i.e. set current file as root directory) using Session/Set Working Directory 

# accessing another function from an external R file
source("2_ExternalFunctions.R")
result <- squareDiff(5,15); result






