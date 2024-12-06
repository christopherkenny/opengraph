test_that('og_parse works', {
  expect_true(is.vector(og_parse('https://www.rstudio.com')))
  expect_true(length(og_parse('https://www.christophertkenny.com/testtesttest')) == 0)
})
