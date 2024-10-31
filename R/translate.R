#' Translate codons into protein sequence
#'
#' @param codons A character vector containing codons

#'
#' @return A character string representing the translated protein sequence
#' @export
#'
#' @examples translate(c("UUU", "UCU")) # Expected output: "FS"
translate <- function(codons){
  peptide_seq <- paste0(codon_to_amino[codons], collapse = "")
  return(peptide_seq)
}
