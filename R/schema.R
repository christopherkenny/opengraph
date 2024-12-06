#' Open Graph Schema
#'
#' @description
#' As of 2024-12-05. Based on <https://ogp.me/>
#'
#' @return A character vector of Open Graph schema.
#' @export
#'
#' @examples
#' og_schema()
og_schema <- function() {
  c(
    # basic
    'og:title', #' , # - The title of your object as it should appear within the graph, e.g., "The Rock".
    'og:type', #' , # - The type of your object, e.g., "video.movie". Depending on the type you specify, other properties may also be required.
    'og:image', #' , # - An image URL which should represent your object within the graph.
    'og:url', #' , # - The canonical URL of your object that will be used as its permanent ID in the graph, e.g., "https://www.imdb.com/title/tt0117500/".
    # optional
    'og:audio', #' , # - A URL to an audio file to accompany this object.
    'og:description', #' , # - A one to two sentence description of your object.
    'og:determiner', #' , # - The word that appears before this object's title in a sentence. An enum of (a, an, the, "", auto). If auto is chosen, the consumer of your data should chose between "a" or "an". Default is "" (blank).
    'og:locale', #' , # - The locale these tags are marked up in. Of the format language_TERRITORY. Default is en_US.
    'og:locale:alternate', #' , # - An array of other locales this page is available in.
    'og:site_name', #' , # - If your object is part of a larger web site, the name which should be displayed for the overall site. e.g., "IMDb".
    'og:video', #' , # - A URL to a video file that complements this object.
    # structured
    ## image
    'og:image:url', #' , # - Identical to og:image.
    'og:image:secure_url', #' , # - An alternate url to use if the webpage requires HTTPS.
    'og:image:type', #' , # - A MIME type for this image.
    'og:image:width', #' , # - The number of pixels wide.
    'og:image:height', #' , # - The number of pixels high.
    'og:image:alt', #' , # - A description of what is in the image (not a caption). If the page specifies an og:image it should specify og:image:alt.

    ## video
    'og:video:url', #' , # - Identical to og:video.
    'og:video:secure_url', #' , # - An alternate url to use if the webpage requires HTTPS.
    'og:video:type', #' , # - A MIME type for this video.
    'og:video:width', #' , # - The number of pixels wide.
    'og:video:height', #' , # - The number of pixels high.
    'og:video:alt', #' , # - A description of what is in the video (not a caption). If the page specifies an og:video it should specify og:video:alt.

    ## audio
    'og:audio:url', #' , # - Identical to og:audio.
    'og:audio:secure_url', #' , # - An alternate url to use if the webpage requires HTTPS.
    'og:audio:type', #' , # - A MIME type for this audio.

    # music.song
    'music:duration', #' , # - integer >=1' , # - The song\'s length in seconds.
    'music:album' , # - music.album array' , # - The album this song is from.
    'music:album:disc' , # - integer >=1' , # - Which disc of the album this song is on.
    'music:album:track' , # - integer >=1' , # - Which track this song is.
    'music:musician' , # - profile array' , # - The musician that made this song.
    'music.album',

    'music:song' , # - music.song' , # - The song on this album.
    'music:song:disc' , # - integer >=1' , # - The same as music:album:disc but in reverse.
    'music:song:track' , # - integer >=1' , # - The same as music:album:track but in reverse.
    'music:musician' , # - profile' , # - The musician that made this song.
    'music:release_date' , # - datetime' , # - The date the album was released.
    'music.playlist',

    'music:song' , # - Identical to the ones on music.album
    'music:song:disc',
    'music:song:track',
    'music:creator' , # - profile' , # - The creator of this playlist.
    'music.radio_station',

    'music:creator' , # - profile' , # - The creator of this station.

    'video.movie',

    'video:actor' , # - profile array' , # - Actors in the movie.
    'video:actor:role' , # - string' , # - The role they played.
    'video:director' , # - profile array' , # - Directors of the movie.
    'video:writer' , # - profile array' , # - Writers of the movie.
    'video:duration' , # - integer >=1' , # - The movie's length in seconds.
    'video:release_date', , # - datetime' , # - The date the movie was released.
    'video:tag' , # - string array' , # - Tag words associated with this movie.
    'video.episode',

    'video:actor', # - Identical to video.movie
    'video:actor:role',
    'video:director',
    'video:writer',
    'video:duration',
    'video:release_date',
    'video:tag',
    'video:series', # video.tv_show' , # - Which series this episode belongs to.
    'video.tv_show', # A multi-episode TV show. The metadata is identical to video.movie.

    'video.other', # A video that doesn\'t belong in any other category. The metadata is identical to video.movie.

    'article', # - Namespace URI: https://ogp.me/ns/article#

    'article:published_time', # - datetime' , # - When the article was first published.
    'article:modified_time', # - datetime' , # - When the article was last changed.
    'article:expiration_time', # - datetime' , # - When the article is out of date after.
    'article:author', # - profile array' , # - Writers of the article.
    'article:section', # - string' , # - A high-level section name. E.g. Technology
    'article:tag', # - string array' , # - Tag words associated with this article.

    'book', # - Namespace URI: https://ogp.me/ns/book#

    'book:author', # - profile array' , # - Who wrote this book.
    'book:isbn', # - string' , # - The ISBN
    'book:release_date' , # - datetime' , # - The date the book was released.
    'book:tag', # - string array' , # - Tag words associated with this book.

    'profile', # - Namespace URI: https://ogp.me/ns/profile#

    'profile:first_name' , # - string, A name normally given to an individual by a parent or self-chosen.
    'profile:last_name' , # - string, A name inherited from a family or marriage and by which the individual is commonly known.
    'profile:username' , # - string, A short unique string to identify them.
    'profile:gender' , # - enum(male, female), Their gender.

    'website' , # - Namespace URI: https://ogp.me/ns/website#
  )
}
