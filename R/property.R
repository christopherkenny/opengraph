#' Extract a specific Open Graph property from a webpage.
#'
#' @param url A string representing the URL of the webpage to parse.
#' @param property A string indicating the Open Graph property (e.g., "og:title" or "title").
#'
#' @return A string containing the value of the specified property, or NA if not found.
#' @export
#'
#' @examples
#' og_property('https://www.rstudio.com', 'og:title')
og_property <- function(url, property) {
  # Parse the webpage
  metadata <- url |>
    og_parse()

  # Extract the specific property
  vapply(property, function(p) {
    property <- gsub('^og:', '', p) # Normalize property name
    if (property %in% names(metadata)) {
      metadata[[property]]
    } else {
      NA_character_
    }
  }, FUN.VALUE = character(1)) |>
    unname()
}
