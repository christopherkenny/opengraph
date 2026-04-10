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
#>                                                                                                                                       locale 
#>                                                                                                                                      "en_US" 
#>                                                                                                                                         type 
#>                                                                                                                                    "website" 
#>                                                                                                                                        title 
#>                                                                                               "Posit | The Open-Source Data Science Company" 
#>                                                                                                                                  description 
#> "The best data science is open source. Posit is committed to creating incredible open-source tools for individuals, teams, and enterprises." 
#>                                                                                                                                          url 
#>                                                                                                                          "https://posit.co/" 
#>                                                                                                                                    site_name 
#>                                                                                                                                      "Posit" 
```
