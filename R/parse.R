#' Parse Open Graph Metadata
#'
#' @param url A string representing the URL of the webpage to parse.
#'
#' @return A named list of Open Graph metadata.
#' @export
#'
#' @examples
#' og_parse('https://www.rstudio.com')
og_parse <- function(url) {
  # Fetch and parse the webpage
  webpage <- url |>
    rvest::read_html()

  # Extract Open Graph meta tags
  meta_tags <- webpage |>
    rvest::html_nodes("meta[property^='og:']")

  # Create a named list of the metadata
  og_metadata <- setNames(
    rvest::html_attr(meta_tags, 'content'),
    rvest::html_attr(meta_tags, 'property')
  )

  # Clean up property names to remove the "og:" prefix
  names(og_metadata) <- gsub('^og:', '', names(og_metadata))

  og_metadata
}
