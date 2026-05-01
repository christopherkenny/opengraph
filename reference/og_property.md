# Extract a specific Open Graph property from a webpage.

Extract a specific Open Graph property from a webpage.

## Usage

``` r
og_property(url, property)
```

## Arguments

- url:

  A string representing the URL of the webpage to parse.

- property:

  A string indicating the Open Graph property (e.g., "og:title" or
  "title").

## Value

A string containing the value of the specified property, or NA if not
found.

## Examples

``` r
og_property('https://www.rstudio.com', 'og:title')
#> [1] "Homepage"
```
