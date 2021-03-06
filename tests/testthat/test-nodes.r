context("nodes")

tt <- nodes()
uu <- nodes(uuid="1193638d-32d1-43f0-a855-8727c94299d8")
vv <- nodes(data='identifier', uuid="1193638d-32d1-43f0-a855-8727c94299d8")

test_that("returns the correct class", {
  expect_is(tt, "list")
  expect_is(tt$meta$limit, "integer")
  expect_is(tt$meta$endOfRecords, "logical")
  
  expect_is(uu, "list")
  expect_is(uu$data$country, "character")
  
  expect_is(vv, "list")
  expect_is(vv$data$createdBy, "character")
})

test_that("returns the correct value", {
  expect_equal(length(tt$data$tags[[1]]), 0)
  expect_equal(uu$data$title, "Republic of Congo")
  expect_equal(vv$data$key, 13587)
  expect_equal(vv$data$modifiedBy, NULL)
})

test_that("returns the correct dimensions", {
  expect_equal(length(tt), 2)
  expect_equal(NROW(tt$data), 100)
  expect_equal(length(uu$data), 29)
  expect_equal(length(vv), 2)
  expect_equal(length(vv$data), 5)
})
