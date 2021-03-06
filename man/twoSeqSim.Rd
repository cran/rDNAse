% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/parSeqSim.R
\name{twoSeqSim}
\alias{twoSeqSim}
\title{DNA/RNA Sequence Alignment for Two DNA/RNA Sequences}
\usage{
twoSeqSim(seq1, seq2, type = "local", submat = "BLOSUM62")
}
\arguments{
\item{seq1}{A character string, containing one DNA/RNA sequence.}

\item{seq2}{A character string, containing another DNA/RNA sequence.}

\item{type}{Type of alignment, default is \code{'local'},
could be \code{'global'} or \code{'local'},
where \code{'global'} represents Needleman-Wunsch global alignment;
\code{'local'} represents Smith-Waterman local alignment.}

\item{submat}{Substitution matrix, default is \code{'BLOSUM62'}, could be one of
\code{'BLOSUM45'}, \code{'BLOSUM50'}, \code{'BLOSUM62'}, \code{'BLOSUM80'}, \code{'BLOSUM100'},
\code{'PAM30'}, \code{'PAM40'}, \code{'PAM70'}, \code{'PAM120'}, \code{'PAM250'}.}
}
\value{
An Biostrings object containing the scores and other alignment information.
}
\description{
DNA/RNA Sequence Alignment for Two DNA/RNA Sequences
}
\details{
This function implements the sequence alignment between two DNA/RNA sequences.
}
\examples{
\donttest{
# Be careful when testing this since it involves sequence alignment
# and might produce unpredictable results in some environments

require(Biostrings)

s1 = readFASTA(system.file('dnaseq/hs.fasta', package = 'rDNA'))[[1]]
s2 = readFASTA(system.file('dnaseq/hs.fasta', package = 'rDNA'))[[2]]
seqalign = twoSeqSim(s1, s2)
summary(seqalign)
print(seqalign@score)}
}
\author{
Min-feng Zhu  <\email{wind2zhu@163.com}>
}
\seealso{
See \code{\link{parSeqSim}} for paralleled pairwise
DNA/RNA similarity calculation based on sequence alignment.
See \code{\link{twoGOSim}} for calculating the
GO semantic similarity between two groups of GO terms or two Entrez gene IDs.
}
\keyword{alignment}
\keyword{parallel}
\keyword{similarity}

