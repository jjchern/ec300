#' Retrun a vector of fitted values.
#'
#' @param formula Regression formula.
#' @param data A dataframe.
#' @return A vector of regression fitted values.
#' @examples
#' fits(mpg ~ hp + wt, data = mtcars)
#' @import broom
#' @export
fits = function(formula, data = data){
  ols = lm(formula, data = data)
  fits = broom::augment(ols)$.fitted
  return(fits)
}
