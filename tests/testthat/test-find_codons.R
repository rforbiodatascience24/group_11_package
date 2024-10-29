test_that("codons found", {
  expect_equal(find_codons("UUUUCUUAUAGGUGA",1), c("UUU","UCU","UAU","AGG","UGA"))})
