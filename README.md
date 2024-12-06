
<!-- README.md is generated from README.Rmd. Please edit that file -->

# opengraph <img src="man/figures/logo.png" align="right" height="132" alt="" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/christopherkenny/opengraph/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/christopherkenny/opengraph/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of `opengraph` is to read and process Open Graph Protocol HTML
on websites.

## Installation

You can install the development version of `opengraph` from
[GitHub](https://github.com/) with:

``` r
# install.packages('pak')
pak::pak('christopherkenny/opengraph')
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(opengraph)
## basic example code
url <- "https://www.r-project.org/"
og_parse(url)
#> named character(0)
```
