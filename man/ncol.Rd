% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seqpac_generics_methods.R
\name{ncol,PAC-method}
\alias{ncol,PAC-method}
\title{number of samples}
\usage{
\S4method{ncol}{PAC}(x)
}
\arguments{
\item{x}{A S4 object of class PAC.}
}
\value{
The number of samples in a PAC-object.
}
\description{
number of samples
}
\examples{

load(system.file("extdata", "drosophila_sRNA_pac_filt_anno.Rdata", 
                  package = "seqpac", mustWork = TRUE))

# extra fuctionality with s4 PAC-object:
names(pac)
length(pac)
nrow(pac)
ncol(pac)
rownames(pac)
colnames(pac)
pheno(pac) 
head(anno(pac))
head(counts(pac))
head(norm(pac)$cpm)

}
