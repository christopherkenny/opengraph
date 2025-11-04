test_that('og_property works', {
  # allow NA for when website doesn't parse

  web <- og_property('https://www.rstudio.com', 'og:title')

  expect_type(web, 'character')
})
