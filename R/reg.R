#' Run a OLS regression just like running \code{reg y x, r} in Stata.
#'
#' @param formula Regression formula.
#' @param data A dataframe.
#' @param ... Extra arguments.
#' @return A dataframe that includes regression coefficients and robust standard errors.
#' @examples
#' reg(mpg ~ hp + wt, data = mtcars)
#' @import lmtest broom dplyr sandwich magrittr
#' @export
reg = function(formula, data, ...){
  ols = lm(formula, data = data)
  coef = lmtest::coeftest(ols, vcov = sandwich::vcovHC(ols, "HC1"))
  tidy = broom::tidy(ols)

  tidy %<>%
    mutate(robust.se. = coef[ , 2]) %>%
    mutate(t.value = estimate / robust.se.) %>%
    mutate(p.value = 2*pt(-abs(t.value), df=df.residual(ols) ) ) %>%
    select(term, estimate, robust.se., t.value, p.value)

  return(tidy)
}
