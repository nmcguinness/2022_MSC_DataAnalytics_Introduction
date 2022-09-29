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







