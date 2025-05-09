#' Parse Open Graph Metadata
#'
#' @param url A string representing the URL of the webpage to parse.
#'
#' @return A named vector of Open Graph metadata.
#' @export
#'
#' @examples
#' og_parse('https://www.rstudio.com')
og_parse <- function(url) {
  # Fetch and parse the webpage
  webpage <- NULL
  try({
    webpage <- url |>
      rvest::read_html()
  }, silent = TRUE)

  if (is.null(webpage)) {
    out <- character(0)
    names(out) <- character(0)
    return(out)
  }

  # Extract Open Graph meta tags
  meta_tags <- webpage |>
    rvest::html_nodes("meta[property^='og:']")

  # Create a named list of the metadata
  og_metadata <- stats::setNames(
    rvest::html_attr(meta_tags, 'content'),
    rvest::html_attr(meta_tags, 'property')
  )

  # Clean up property names to remove the "og:" prefix
  names(og_metadata) <- gsub('^og:', '', names(og_metadata))

  og_metadata
}
