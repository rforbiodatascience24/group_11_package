#' Convert DNA sequence to RNA
#'
#' @param DNA_seq A character string representing a DNA sequence
#'
#' @return Outputs an RNA sequence, where each T of the input sequence is swapped with U
#' @export
#'
#' @examples
#' convert_to_RNA("AGAGGTTTTTTCGA") # Expected output: "AGAGGUUUUUUCGA"
convert_to_rna<- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
