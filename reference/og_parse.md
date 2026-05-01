# Parse Open Graph Metadata

Parse Open Graph Metadata

## Usage

``` r
og_parse(url)
```

## Arguments

- url:

  A string representing the URL of the webpage to parse.

## Value

A named vector of Open Graph metadata.

## Examples

``` r
og_parse('https://www.rstudio.com')
#>                  site_name                        url 
#>                    "Posit" "https://posit.co/node/11" 
#>                      title 
#>                 "Homepage" 
```
