#' @title 6_UserInput.R
#' @description Reading data from command line
#' @author NMCG
#' @bugs None
#' @keywords as, conversion, paste, print
#' @seealso https://www.geeksforgeeks.org/taking-input-from-user-in-r-programming/
#' @note To RUN this code, save the file, then click on the Source button in the top RHS of this script pane. We do this because the standard (CTRL+ENTER) approach wont work when we read user input

# automatically clear console - the string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")


#################### READ DATA ###########################

# input an integer as a string
myAgeAsStr <- readline(prompt = "Enter an age:");

#uncomment the line below to see what happens when we try to use a string as an integer (or float) (i.e. we get a non-numeric argument to binary operator error)
# doubleAge <- myAgeAsStr * 2; doubleAge

#################### TYPE CONVERSION ###########################

# convert the input value to an integer
myAgeAsInt <- as.integer(myAgeAsStr);

# now we have converted to an integer we can apply arithmetic operations e.g. divide, multiple, mod etc
olderAge <- myAgeAsInt + 10;
olderAge

# let's read in a value that we convert to numeric this time
myHeightInCMSAsStr = readline(prompt = "Enter your height in cm:");

# convert the input value to an floating-point numeric value
myHeightInCMSAsFloat = as.numeric(myHeightInCMSAsStr)

# now we have a float we can apply arithmetic operations e.g. divide, multiple, mod etc
myHeightInMetresAsFloat = myHeightInCMSAsFloat / 100

#################### USING PASTE TO FORMAT OUTPUT STRING ###########################

# create a string from a concatenation of strings and the integer
outputStr <- paste("You are", myAgeAsInt, "years old and ", myHeightInMetresAsFloat, "metres tall!")

# print the output string
print(outputStr)
