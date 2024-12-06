test_that("og_create works", {
  expect_equal(
    og_create(
      title = 'Process the Open Graph Protocol',
      type = 'website',
      image = 'http://christophertkenny.com/opengraph/logo.png',
      url = 'https://christophertkenny.com/opengraph/',
      description = 'Parse metadata on websites which use the Open Graph Protocol.'
    ),
    c("<meta property=\"og:title\" content=\"Process the Open Graph Protocol\">",
      "<meta property=\"og:type\" content=\"website\">", "<meta property=\"og:image\" content=\"http://christophertkenny.com/opengraph/logo.png\">",
      "<meta property=\"og:url\" content=\"https://christophertkenny.com/opengraph/\">",
      "<meta property=\"og:description\" content=\"Parse metadata on websites which use the Open Graph Protocol.\">"
    )
  )

  expect_error(og_create(), '`title` is required.')
  expect_error(og_create(title = 'foo'), '`type` is required.')
  expect_error(og_create(title = 'foo', type = 'bar'), '`image` is required.')
  expect_error(og_create(title = 'foo', type = 'bar', image = 'img'), '`url` is required.')
})
