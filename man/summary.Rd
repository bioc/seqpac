% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seqpac_generics_methods.R
\name{summary}
\alias{summary}
\alias{summary,}
\alias{summary<-}
\alias{summary,PAC-method}
\alias{summary<-,PAC,list-method}
\title{summary(PAC)}
\usage{
summary(object)

\S4method{summary}{PAC}(object)

\S4method{summary}{PAC,list}(object) <- value
}
\arguments{
\item{object}{A S4 PAC-object containing a summary list ('folder') with
normalized data.frames. Can be generated by the PAC_summary function.}

\item{value}{List of data.frames having the same row names as row names in
Anno (sequences).}
}
\value{
The list of summary tables (data.frames) from a PAC-object.

Updated S4 PAC-object.
}
\description{
Access the summary list with summarized tables in S4 PAC
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
\code{\link{pheno}()},
\code{\link{show.PAC}()}
}
\concept{PAC methods}
