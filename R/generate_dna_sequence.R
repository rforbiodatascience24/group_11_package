#' generate_dna_sequence
#'
#' @param sequence_length
#'
#' @return  Generate a random sequence of "A", "T", "G", "C" with the specified length
#'
#' @export
#'
#' @examples generate_dna_sequence(2)
#'
generate_dna_sequence <- function(sequence_length) {

  nucleotides <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  dna_sequence <- paste0(nucleotides, collapse = "")
  return(dna_sequence)
}
