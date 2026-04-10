# Open Graph Schema

As of 2024-12-05. Based on <https://ogp.me/>

## Usage

``` r
og_schema
```

## Format

A list of Open Graph schema.

## Examples

``` r
og_schema
#> $required
#> [1] "og:title" "og:type"  "og:image" "og:url"  
#> 
#> $optional
#> [1] "og:audio"            "og:description"      "og:determiner"      
#> [4] "og:locale"           "og:locale:alternate" "og:site_name"       
#> [7] "og:video"           
#> 
#> $image
#> [1] "og:image:url"        "og:image:secure_url" "og:image:type"      
#> [4] "og:image:width"      "og:image:height"     "og:image:alt"       
#> 
#> $video
#> [1] "og:video:url"        "og:video:secure_url" "og:video:type"      
#> [4] "og:video:width"      "og:video:height"     "og:video:alt"       
#> 
#> $audio
#> [1] "og:audio:url"        "og:audio:secure_url" "og:audio:type"      
#> 
#> $music.song
#>  [1] "music:duration"      "music:album"         "music:album:disc"   
#>  [4] "music:album:track"   "music:musician"      "music.album"        
#>  [7] "music:song"          "music:song:disc"     "music:song:track"   
#> [10] "music:musician"      "music:release_date"  "music.playlist"     
#> [13] "music:song"          "music:song:disc"     "music:song:track"   
#> [16] "music:creator"       "music.radio_station" "music:creator"      
#> 
#> $video.movie
#> [1] "video:actor"        "video:actor:role"   "video:director"    
#> [4] "video:writer"       "video:duration"     "video:release_date"
#> [7] "video:tag"         
#> 
#> $video.episode
#> [1] "video:actor"        "video:actor:role"   "video:director"    
#> [4] "video:writer"       "video:duration"     "video:release_date"
#> [7] "video:tag"          "video:series"      
#> 
#> $video.tv_show
#> [1] "video:actor"        "video:actor:role"   "video:director"    
#> [4] "video:writer"       "video:duration"     "video:release_date"
#> [7] "video:tag"         
#> 
#> $video.other
#> [1] "video:actor"        "video:actor:role"   "video:director"    
#> [4] "video:writer"       "video:duration"     "video:release_date"
#> [7] "video:tag"         
#> 
#> $article
#> [1] "article:published_time"  "article:modified_time"  
#> [3] "article:expiration_time" "article:author"         
#> [5] "article:section"         "article:tag"            
#> 
#> $book
#> [1] "book:author"       "book:isbn"         "book:release_date"
#> [4] "book:tag"         
#> 
#> $profile
#> [1] "profile:first_name" "profile:last_name"  "profile:username"  
#> [4] "profile:gender"    
#> 
#> $website
#> NULL
#> 
```
