
<!-- README.md is generated from README.Rmd. Please edit that file -->

# opengraph <img src="man/figures/logo.png" align="right" height="132" alt="" />

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/opengraph)](https://CRAN.R-project.org/package=opengraph)
[![opengraph status
badge](https://christopherkenny.r-universe.dev/badges/opengraph)](https://christopherkenny.r-universe.dev/opengraph)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/christopherkenny/opengraph/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/christopherkenny/opengraph/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/christopherkenny/opengraph/branch/main/graph/badge.svg)](https://app.codecov.io/gh/christopherkenny/opengraph?branch=main)
<!-- badges: end -->

The goal of `opengraph` is to read and process Open Graph Protocol
metadata on websites.

## Installation

You can install the development version of `opengraph` from
[GitHub](https://github.com/) with:

``` r
# install.packages('pak')
pak::pak('christopherkenny/opengraph')
```

## Example

This is a relatively simple package. The main function is `og_parse()`
which returns a named vector of Open Graph metadata found on a given
webpage.

``` r
library(opengraph)
url <- 'https://christophertkenny.com/opengraph/'
og_parse(url)
#>                                                           title 
#>                               "Process the Open Graph Protocol" 
#>                                                     description 
#> "Parse metadata on websites which use the Open Graph Protocol." 
#>                                                           image 
#>               "http://christophertkenny.com/opengraph/logo.png"
```

The package can also read specific Open Graph properties with
`og_property()`. Properties can be prefixed with `og:` or not.

``` r
og_property(url, 'og:title')
#> [1] "Process the Open Graph Protocol"
og_property(url, 'title')
#> [1] "Process the Open Graph Protocol"
```

If there is no Open Graph metadata found, `og_parse()` will return an
empty named vector.

``` r
og_parse('https://cran.r-project.org/')
#> named character(0)
```
