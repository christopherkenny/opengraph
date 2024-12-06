test_that('og_parse works', {
  expect_true(is.vector(og_parse('https://www.rstudio.com')))
})
