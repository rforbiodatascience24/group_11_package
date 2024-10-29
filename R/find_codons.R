#' Extract each individual codons from a sequence.
#'
#' @param sequence a RNA sequence
#' @param start where in the sequence you want to start
#'
#' @return a string of codons
#' @export
#'
#' @examples find_codons("UUUUCUUAUAGGUGA",1)
#' output= c("UUU","UCU","UAU","AGG","UGA")
find_codons <- function(sequence, start = 1){
  seq_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
