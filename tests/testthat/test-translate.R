test_that("translation works", {
  expect_equal(translate(c("UUU", "GGG", "CUC", "AAG")), "FGLK")
})
