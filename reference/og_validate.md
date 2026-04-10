# Validate Open Graph Metadata

Check if all required Open Graph properties are present.

## Usage

``` r
og_validate(metadata)
```

## Arguments

- metadata:

  A named list of Open Graph metadata.

## Value

A logical value indicating whether all required metadata is present.

## Examples

``` r
og_parse('https://www.rstudio.com') |>
  og_validate()
#> [1] FALSE
```
