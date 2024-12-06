#' Create Open Graph meta tags
#'
#' @param title The title of your object as it should appear within the graph
#' @param type The type of your object, e.g., "video.movie". Depending on the type you specify, other properties may also be required.
#' @param image An image URL which should represent your object within the graph.
#' @param url The canonical URL of your object that will be used as its permanent ID in the graph
#' @param ... Additional Open Graph properties
#'
#' @return A character vector of Open Graph meta tags
#' @export
#'
#' @examples
#' og_create(
#'   title = 'Process the Open Graph Protocol',
#'   type = 'website',
#'   image = 'http://christophertkenny.com/opengraph/logo.png',
#'   url = 'https://christophertkenny.com/opengraph/',
#'   description = 'Parse metadata on websites which use the Open Graph Protocol.'
#' )
og_create <- function(title, type, image, url, ...) {

  if (missing(title)) {
    stop('`title` is required.')
  }
  if (missing(type)) {
    stop('`type` is required.')
  }
  if (missing(image)) {
    stop('`image` is required.')
  }
  if (missing(url)) {
    stop('`url` is required.')
  }


  out <- list(
    'og:title' = title,
    'og:type' = type,
    'og:image' = image,
    'og:url' = url,
    ...
  )

  add_og <- which(names(out) %in% gsub('^og:', '', og_schema$optional))
  if (length(add_og) > 0) {
    names(out)[add_og] <- paste0('og:', names(out)[add_og])
  }

  vapply(names(out), function(n) {
    paste0('<meta property="', n, '" content="', out[[n]], '">')
  }, FUN.VALUE = character(1)) |>
    unname()
}
