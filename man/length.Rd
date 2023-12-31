% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seqpac_generics_methods.R
\name{length,PAC-method}
\alias{length,PAC-method}
\alias{length,reanno-method}
\title{number of objects in PAC}
\usage{
\S4method{length}{PAC}(x)

\S4method{length}{reanno}(x)
}
\arguments{
\item{x}{A S4 object of class PAC.}
}
\value{
The number of items in a PAC-object.

Number of items in the reanno-object.
}
\description{
number of objects in PAC

length of reanno object
}
\examples{

load(system.file("extdata", "drosophila_sRNA_pac_filt_anno.Rdata", 
                  package = "seqpac", mustWork = TRUE))

# extra functionality with s4 PAC-object:
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
