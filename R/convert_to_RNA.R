#' Convert DNA sequence to RNA
#'
#' @param DNA_seq A DNA sequence
#'
#' @return Outputs an RNA sequence, where each T is swapped with U
#' @export
#'
#' @examples
convert_to_RNA<- function(DNA_seq){
  RNA_seq <- gsub("T", "U", DNA_seq)
  return(RNA_seq)
}
