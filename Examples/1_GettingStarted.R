# Data Anaytics....
# Author: NMCG
# Date: 15/9/22
# Bugs: None
# Keywords: data types, control flow, data structures

#automatically clear console
cat("\014")

# data types
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

#################### CONTROL FLOW ###########################

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

#################### Functions ###########################
#inbuilt functions (log10, log2, log, exp, abs)

log1 <- log10(1000); log1
age <- abs(-22); age
roundHeight <- round(1.892, 1); roundHeight

square_add <- function(x) {
  z <- x * x + x
}

result <- square_add(10); result








