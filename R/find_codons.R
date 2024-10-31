#' Extract each individual codons from a sequence.
#'
#' @param sequence A character string representing an RNA sequence
#' @param start The starting position from which the codon extraction will start.
#'
#' @return A character vector containing codons
#' @export
#'
#' @examples find_codons("UUUUCUUAUAGGUGA",1) # Expected output: c("UUU","UCU","UAU","AGG","UGA")
find_codons <- function(sequence, start = 1){
  seq_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
