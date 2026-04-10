# opengraph

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

This is a relatively simple package. The main function is
[`og_parse()`](http://christophertkenny.com/opengraph/reference/og_parse.md)
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
[`og_property()`](http://christophertkenny.com/opengraph/reference/og_property.md).
Properties can be prefixed with `og:` or not.

``` r
og_property(url, 'og:title')
#> [1] "Process the Open Graph Protocol"
og_property(url, 'title')
#> [1] "Process the Open Graph Protocol"
```

If there is no Open Graph metadata found,
[`og_parse()`](http://christophertkenny.com/opengraph/reference/og_parse.md)
will return an empty named vector.

``` r
og_parse('https://cran.r-project.org/')
#> named character(0)
```
