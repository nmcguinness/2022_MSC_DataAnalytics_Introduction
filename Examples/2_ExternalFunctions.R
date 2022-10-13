#' @title 2_ExternalFunctions.R
#' @description Adding functions to an external R file
#' @author NMCG
#' @bugs None
#' @keywords functions, Roxygen, comments


#' @title squareDiff
#' @description Returns the square of the difference between two numeric values
#' @param a Numeric
#' @param b Numeric
#' @return Numeric
#' @export
#' @examples
#' result <- squareDiff(10, 5)
squareDiff <- function(a,b){
  (a - b)^2
}


#' @title logAbs
#' @description Desc of the function...
#' @param someValue Numeric
#' @param base Numeric
#' @return Numeric Abs log of someValue
#' @export
#' @examples
#' result <- logAbs(10, 2)
logAbs <- function(someValue, base){  log(abs(someValue), base)}




