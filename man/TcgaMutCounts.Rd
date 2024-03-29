% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oncoprintISB.R
\name{TcgaMutCounts}
\alias{TcgaMutCounts}
\title{obtain data frame with counts of mutation per gene symbol for selected tumor type}
\usage{
TcgaMutCounts(tumor, limit = NULL, db = "isb-cgc:tcga_201607_beta", project)
}
\arguments{
\item{tumor}{character(1) defaults to 'BRCA'}

\item{limit}{numeric(1) defaults to NULL, appended as limit to number of records returned if non-null}

\item{db}{character(1) BigQuery database name}

\item{project}{character(1) project code}
}
\value{
table as returned by bigrquery::bq_project_query
}
\description{
obtain data frame with counts of mutation per gene symbol for selected tumor type
}
\note{
This function returns overall mutation count, and many individuals have multiple
mutations recorded per gene.
}
\examples{
if (interactive()) {
requireNamespace("bigrquery")
tt = TcgaMutCounts("BRCA", project="cgc-05-0009") # substitute your project name
head(tt)
}  # need authentication
}
