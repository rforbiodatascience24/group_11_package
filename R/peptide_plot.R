#' Plot amino acid composition of peptide sequence
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @param peptide_seq A character string representing a peptide sequence.
#'
#' @return A ggplot object representing a bar plot of the counts of each amino acid in the provided peptide sequence.
#' @export
#'
#' @examples
peptide_plot <- function(peptide_seq){
  unique_aa <- peptide_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = peptide_seq, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["unique_aa"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = unique_aa, y = Counts, fill = unique_aa)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
