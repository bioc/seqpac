% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seqpac_generics_methods.R
\docType{methods}
\name{pheno}
\alias{pheno}
\alias{pheno,}
\alias{pheno<-}
\alias{pheno,PAC-method}
\alias{pheno<-,PAC,data.frame-method}
\title{pheno(PAC)}
\usage{
pheno(object)

\S4method{pheno}{PAC}(object)

\S4method{pheno}{PAC,data.frame}(object) <- value
}
\arguments{
\item{object}{A S4 PAC-object containing Pheno, Anno and Counts tables. Can
be generated by the 'PAC generation' family of functions, for example see
?make_counts.}

\item{value}{Data.frame having the same row names as column names in Counts
(sample IDs).}
}
\value{
The Pheno data.frame table from a S4 PAC-object

Updated S4 PAC-object.
}
\description{
Access sample information in a PAC-object
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
\seealso{
Other PAC methods: 
\code{\link{anno}()},
\code{\link{counts}()},
\code{\link{names,PAC-method}},
\code{\link{norm}()},
\code{\link{show.PAC}()},
\code{\link{summary}()}
}
\concept{PAC methods}
