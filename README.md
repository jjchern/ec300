<!-- README.md is generated from README.Rmd. Please edit that file -->
ec300
=====

The goal of ec300 is to provide friendly functions for students in Econ 300, summmer 2015. The package includes the following functions:

-   `getmm()`: Get datasets used in Mastering 'Metrics.
-   `reg()`: Run a OLS regression just like running `reg y x, r` in Stata.
-   `fits()`: Retrun a vector of fitted values. Like `predict fits, xb` in Stata

Installation
============

``` r
# install.packages("devtools")
devtools::install_github("jjchern/ec300")
```

Usage
=====

``` r
getmm("mlda")
reg(all ~ agecell, mlda)
fits(all ~ agecell, mlda)
```
