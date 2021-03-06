% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/copy-number-scores.R
\name{copy_number_scores}
\alias{copy_number_scores}
\alias{calculate_fraction_cna}
\alias{calculate_loh}
\alias{calculate_ntai}
\alias{calculate_lst}
\alias{calculate_hrdloh}
\title{Copy-number based scores}
\source{
\url{https://www.ncbi.nlm.nih.gov/pubmed/26015868}
}
\usage{
calculate_fraction_cna(segs, ploidy, genome = c("hg19", "hg18", "hg38"),
  algorithm = c("em", "cncf"))

calculate_loh(segs, snps, genome = c("hg19", "hg18", "hg38"),
  algorithm = c("em", "cncf"), hypoploidy_threshold = 0.5)

calculate_ntai(segs, ploidy, genome = c("hg19", "hg18", "hg38"),
  algorithm = c("em", "cncf"), min_size = 0, min_probes = 250)

calculate_lst(segs, ploidy, genome = c("hg19", "hg18", "hg38"),
  algorithm = c("em", "cncf"), min_size = 1e+07, min_probes = 50)

calculate_hrdloh(segs, ploidy, algorithm = c("em", "cncf"))
}
\arguments{
\item{segs}{FACETS segmentation output.}

\item{ploidy}{Sample ploidy.}

\item{genome}{Genome build.}

\item{algorithm}{Choice between FACETS \code{em} and \code{cncf} algorithm.}

\item{snps}{FACETS SNP output.}

\item{hypoploidy_threshold}{Threshold for hypoploid call.}

\item{min_size}{Minimum length of segment, as defined per function.}

\item{min_probes}{Minimum number of SNPs per segment, as defined per function.}
}
\value{
List with one or more values from function.
}
\description{
Calculate the following 
\describe{
 \item{\strong{Fraction of genome altered:}}{Fraction of genome altered and genome doubling flag.}
 \item{\strong{Fraction LOH:}}{Fraction of genome with LOH and flag for hypoploidy.}
 \item{\strong{LST score:}}{Large-scale state transitions, see source URL.}
 \item{\strong{NtAI:}}{Telomeric allelic imbalance, see source URL.}
 \item{\strong{HRD-LOH:}}{HRD-LOH score, see source URL.}
}
}
\examples{
calculate_fraction_cna(test_facets_output$segs, test_facets_output$ploidy, 'hg38', 'em')
calculate_loh(test_facets_output$segs, test_facets_output$snps, 'hg38', 'em')
calculate_lst(test_facets_output$segs, test_facets_output$ploidy, 'hg38', 'em')
calculate_ntai(test_facets_output$segs, test_facets_output$ploidy, 'hg38', 'em')
calculate_hrdloh(test_facets_output$segs, test_facets_output$ploidy, 'em')

}
