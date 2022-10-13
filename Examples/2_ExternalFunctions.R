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