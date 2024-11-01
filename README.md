
# dogma

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of dogma is to recreate the central dogma of molecular biology.
This package is useful for bioinformaticians and molecular biologists
who want to simulate molecular biology processes and analyze sequence
data. There are five functions included in the dogma package which can
be used consecutively: `generate_dna_sequence()`, `convert_to_rna()`,
`find_codons()`, `translate()`, `peptide_plot()`.

## Installation

You can install the development version of dogma from GitHub like so:

``` r
# install.packages("devtools")
devtools::install_github("rforbiodatascience24/group_11_package")
#> Downloading GitHub repo rforbiodatascience24/group_11_package@HEAD
#> rlang      (1.1.1  -> 1.1.4) [CRAN]
#> lifecycle  (1.0.3  -> 1.0.4) [CRAN]
#> glue       (1.6.2  -> 1.8.0) [CRAN]
#> cli        (3.6.1  -> 3.6.3) [CRAN]
#> utf8       (1.2.3  -> 1.2.4) [CRAN]
#> vctrs      (0.6.3  -> 0.6.5) [CRAN]
#> fansi      (1.0.4  -> 1.0.6) [CRAN]
#> colorspace (2.1-0  -> 2.1-1) [CRAN]
#> munsell    (0.5.0  -> 0.5.1) [CRAN]
#> labeling   (0.4.2  -> 0.4.3) [CRAN]
#> farver     (2.1.1  -> 2.1.2) [CRAN]
#> stringi    (1.7.12 -> 1.8.4) [CRAN]
#> withr      (2.5.0  -> 3.0.2) [CRAN]
#> gtable     (0.3.3  -> 0.3.6) [CRAN]
#> Installing 14 packages: rlang, lifecycle, glue, cli, utf8, vctrs, fansi, colorspace, munsell, labeling, farver, stringi, withr, gtable
#> Installing packages into '/tmp/RtmpzPRur7/temp_libpath8317a27050d43'
#> (as 'lib' is unspecified)
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#> * checking for file ‘/tmp/RtmpE4hyOo/remotes870b96f55ce87/rforbiodatascience24-group_11_package-10c53a7/DESCRIPTION’ ... OK
#> * preparing ‘dogma’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building ‘dogma_0.1.0.tar.gz’
#> Installing package into '/tmp/RtmpzPRur7/temp_libpath8317a27050d43'
#> (as 'lib' is unspecified)
```

To use this package, you need to install the following dependencies:

``` r
# install.packages("ggplot2")  # For plotting (`ggplot`, `aes`, `geom_col`, `theme_bw`, `theme`).
# install.packages("stringr")   # For string manipulation (`str_split`, `boundary`, `str_count`).
```

Load libraries:

``` r
library(ggplot2)
library(stringr)
library(dogma)
```

# Generating a DNA sequence.

The first step is to generate a random DNA sequence with the function
generate_dna_sequence(): This function takes a number as input, which
represents the length of the sequence that is to be generated. Then it
creates a random combination of characters A, T, G, C.

# Converting DNA to RNA.

Next, the DNA sequence is converted to RNA with the function
convert_to_rna(): The function replaces each thymine (T) occurence in
the input DNA sequence with an uracil (U) and outputs an RNA sequence.

# Extracting codons from RNA sequence.

Next, the find_codons() function, extracts codons from the RNA sequence:
By default, this function begins extracting codons from the beginning of
the sequence. The substring() function is used to extract portions of
the sequence.The first argument specifies the starting positions of the
codons. It generates a sequence of positions starting from start up to
seq_length - 3 + 1, in steps of 3 (the length of a codon). The last
argument specifies the ending positions of the codons, generating a
sequence from 3 + start - 1 to seq_length, also in steps of 3. Finally,
the function returns a vector of codons extracted from the input
sequence.

# Translating codons to peptide sequence.

The vector of extracted codons is translated into a protein sequence
with the function translate(). This function returns a string of
characters representing the sequence of amino acids of the translated
peptide.

# Plotting the amino acid composition of the translated peptide.

Lastly, the peptide_plot() function plots the composition of amino acids
of the translated peptide. This function takes a character string
representing a protein sequence as input and it counts how many times
each amino acid occurs in it. Then it creates a bar plot object where
each column represents a amino acid. This functions includes the
following dependencies, which have been added in the documentation: \#’
@importFrom ggplot2 ggplot aes geom_col theme_bw theme \#’ @importFrom
stringr str_split boundary str_count These are included as they are
necessary, as the package limits unnecessary dependencies.

## Example

This is a basic example which shows you how to use the package on a DNA
sequence and its translated product:

``` r
library(dogma)
# Generate random DNA sequence
dna_seq <- generate_dna_sequence(25) # "CCGAGTAGAATACAGGCTCTGTCTA"
# Convert to RNA
rna_seq <- convert_to_rna(dna_seq) # "CCGAGUAGAAUACAGGCUCUGUCUA"
# Extract codons from RNA
codons <- find_codons(rna_seq) # "CCG" "AGU" "AGA" "AUA" "CAG" "GCU" "CUG" "UCU"
# Translate codons into a peptide sequence
peptide_seq <- translate(codons) # "PSRIQALS"
# Plot peptide amino acid composition
peptide_plot(peptide_seq)
```

<img src="man/figures/README-unnamed-chunk-4-1.svg" width="100%" />
