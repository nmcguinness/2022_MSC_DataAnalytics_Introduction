#' @title 8_UsingPipes.R
#' @description Demonstrates the improved readability of using pipes vs nested function calls
#' @author NMCG
#' @bugs None
#' @keywords pipe, magrittr
#' @seealso https://www.geeksforgeeks.org/taking-input-from-user-in-r-programming/
#' @note To RUN this code, save the file, then click on the Source button in the top RHS of this script pane. We do this because the standard (CTRL+ENTER) approach wont work when we read user input

# package download & install ###################################################
if(!require("magrittr"))install.packages("magrittr")

# package load #################################################################
library(magrittr)

# pipe demo ####################################################################

# actual quarterly income
aQI <- c(100, 125, 75, 50) 
# predicted quarterly income
pQI <- c(120, 115, 65, 55) 

# lets calculate the sqrt of the mean square error (MSE) - technique 1 - line-by-line
diff = aQI - pQI
squareDiff = diff^2
sqrtMSE = sqrt(mean(squareDiff))
sqrtMSE

# lets calculate the sqrt of the mean square error (MSE) - technique 2 - nested function calls
sqrtMSE <- sqrt(mean((aQI - pQI)^2))
sqrtMSE

# lets calculate the sqrt of the mean square error (MSE) - technique 3 - pipes
sqrtMSE <- (aQI - pQI)^2 %>%
  mean() %>% 
  sqrt()
sqrtMSE


