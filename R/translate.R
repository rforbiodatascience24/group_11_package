#' Translate codons into protein sequence
#'
#' @param codons A vector of codons

#'
#' @return the translated protein sequence in string format
#' @export
#'
#' @examples translate <- function(c("UUU", "UCU")){
#'   peptide_seq <- paste0(codon_to_amino[codons], collapse = "")
#'   return(peptide_seq)
translate <- function(codons){
  peptide_seq <- paste0(codon_to_amino[codons], collapse = "")
  return(peptide_seq)
}
