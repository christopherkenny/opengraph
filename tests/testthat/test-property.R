test_that('og_property works', {
  # allow NA for when website doesn't parse
  expect_in(og_property('https://www.rstudio.com', 'og:title'), c('Posit', NA_character_))
})
