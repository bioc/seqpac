% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seqpac_generics_methods.R
\name{full}
\alias{full}
\alias{full,}
\alias{full<-}
\alias{full,reanno-method}
\alias{full<-,reanno,list-method}
\title{full(reanno)}
\usage{
full(object)

\S4method{full}{reanno}(object)

\S4method{full}{reanno,list}(object) <- value
}
\arguments{
\item{object}{A S4 reanno-object containing an Full_anno list.}

\item{value}{List of tibble data.frames with the same property as the
Full_anno list of tibble data.frames in the reanno object, e.g. having the
same names in seq column as row names (sequences) in the original
PAC-object used to generate the reanno object. See examples and
?make_reanno for details.}
}
\value{
All the results that were imported into the reanno-object returned as
  a list of tibble data.frames (class tbl_df, tbl, data.frame).

Updated S4 reanno-object.
}
\description{
Access the multilevel list of imported data.frames in a S4 reanno object
}
\examples{
######################################################### 
##### Create a reanno object

##  First load a PAC- object

 load(system.file("extdata", "drosophila_sRNA_pac_filt_anno.Rdata", 
                   package = "seqpac", mustWork = TRUE))
 anno(pac) <- anno(pac)[,1, drop = FALSE]
 
 
##  Then specify paths to fasta references
# If you are having problem see the vignette small RNA guide for more info.
 
 trna_path <- system.file("extdata/trna", "tRNA.fa", 
                          package = "seqpac", mustWork = TRUE)  
 rrna_path <- system.file("extdata/rrna", "rRNA.fa", 
                          package = "seqpac", mustWork = TRUE)
 
 ref_paths <- list(trna= trna_path, rrna= rrna_path)
 
##  Add output path of your choice.
# Here we use the R temporary folder depending on platform  
if(grepl("windows", .Platform$OS.type)){
 output <- paste0(tempdir(), "\\\\seqpac\\\\test")
}else{
 output <- paste0(tempdir(), "/seqpac/test")}

## Make sure it is empty (otherwise you will be prompted for a question)
out_fls  <- list.files(output, recursive=TRUE)
closeAllConnections()
suppressWarnings(file.remove(paste(output, out_fls, sep="/")))

##  Then map your PAC-object against the fasta references 
 map_reanno(pac, ref_paths=ref_paths, output_path=output,
               type="internal", mismatches=2,  import="biotype", 
               threads=2, keep_temp=FALSE)

##  Then generate a reanno-object of the temporary bowtie-files 
reanno_object <- make_reanno(output, PAC=pac, mis_fasta_check = TRUE)

## Accessing content and S4/S3 conversion:
names(reanno_object)
overview(reanno_object)
full(reanno_object)
rownames(reanno_object)
length(reanno_object)
nrow(reanno_object)
reanno_s3 <- as(reanno_object, "list")
reanno_s4 <- as.reanno(reanno_s3)   
}
\seealso{
Other reanno methods: 
\code{\link{overview}()}
}
\concept{reanno methods}
