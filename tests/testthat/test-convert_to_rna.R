test_that("succesfully converted to RNA", {
  expect_equal(convert_to_rna("AAGCTTTTTTGCA"), "AAGCUUUUUUGCA")
})
