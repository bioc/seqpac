% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seqpac_generics_methods.R
\docType{methods}
\name{norm}
\alias{norm}
\alias{norm,}
\alias{norm<-}
\alias{norm,PAC-method}
\alias{norm<-,PAC,list-method}
\title{norm(PAC)}
\usage{
norm(object)

\S4method{norm}{PAC}(object)

\S4method{norm}{PAC,list}(object) <- value
}
\arguments{
\item{object}{A S4 PAC-object containing a norm list ('folder') with
normalized data.frames. Can be generated by the PAC_norm function.}

\item{value}{List of data.frames having the same column names as row names in
Pheno (sample ID) and row names as row names in Anno (sequences.)}
}
\value{
The list of normalized tables (data.frames) from a PAC-object.

Updated S4 PAC-object.
}
\description{
Access the norm list with normalized table in S4 PAC
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
\code{\link{pheno}()},
\code{\link{show.PAC}()},
\code{\link{summary}()}
}
\concept{PAC methods}
