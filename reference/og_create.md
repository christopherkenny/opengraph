# Create Open Graph meta tags

Create Open Graph meta tags

## Usage

``` r
og_create(title, type, image, url, ...)
```

## Arguments

- title:

  The title of your object as it should appear within the graph

- type:

  The type of your object, e.g., "video.movie". Depending on the type
  you specify, other properties may also be required.

- image:

  An image URL which should represent your object within the graph.

- url:

  The canonical URL of your object that will be used as its permanent ID
  in the graph

- ...:

  Additional Open Graph properties

## Value

A character vector of Open Graph meta tags

## Examples

``` r
og_create(
  title = 'Process the Open Graph Protocol',
  type = 'website',
  image = 'http://christophertkenny.com/opengraph/logo.png',
  url = 'https://christophertkenny.com/opengraph/',
  description = 'Parse metadata on websites which use the Open Graph Protocol.'
)
#> [1] "<meta property=\"og:title\" content=\"Process the Open Graph Protocol\">"                                    
#> [2] "<meta property=\"og:type\" content=\"website\">"                                                             
#> [3] "<meta property=\"og:image\" content=\"http://christophertkenny.com/opengraph/logo.png\">"                    
#> [4] "<meta property=\"og:url\" content=\"https://christophertkenny.com/opengraph/\">"                             
#> [5] "<meta property=\"og:description\" content=\"Parse metadata on websites which use the Open Graph Protocol.\">"
```
