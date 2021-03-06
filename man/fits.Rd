% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/fits.R
\name{fits}
\alias{fits}
\title{Retrun a vector of fitted values.}
\usage{
fits(formula, data = data)
}
\arguments{
\item{formula}{Regression formula.}

\item{data}{A dataframe.}
}
\value{
A vector of regression fitted values.
}
\description{
Retrun a vector of fitted values.
}
\examples{
fits(mpg ~ hp + wt, data = mtcars)
}

