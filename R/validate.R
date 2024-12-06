#' Validate Open Graph Metadata
#'
#' Check if all required Open Graph properties are present.
#'
#' @param metadata A named list of Open Graph metadata.
#'
#' @return A logical value indicating whether all required metadata is present.
#' @export
#'
#' @examples
#' og_parse('https://www.rstudio.com') |>
#'   og_validate()
og_validate <- function(metadata) {
  required_fields <- c('title', 'type', 'image', 'url')

  # Check for missing fields
  missing_fields <- setdiff(required_fields, names(metadata))

  length(missing_fields) == 0
}
