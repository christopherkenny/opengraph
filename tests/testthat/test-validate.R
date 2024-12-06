test_that("og_validate() works", {

  web <- og_parse('https://www.rstudio.com')

  skip_if(length(web) == 0)

  expect_equal(og_validate(web), TRUE)
})
