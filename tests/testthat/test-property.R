test_that('og_property works', {
  expect_equal(og_property('https://www.rstudio.com', 'og:title'), 'Posit')
})
