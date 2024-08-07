% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getdata.R
\name{check_taxa_names}
\alias{check_taxa_names}
\title{standardize species names.}
\usage{
check_taxa_names(spp, verbose = FALSE, accept = TRUE, ...)
}
\arguments{
\item{spp}{\code{string} species name provided by the user.}

\item{verbose}{\code{logical}. Default \code{TRUE} to show implementation messages.}

\item{accept}{\code{logical}. The user can reject or accept the suggested name by changing the default \code{TRUE} to \code{FALSE}}

\item{...}{Other arguments are allowed. See \code{gnr_resolve} for details.}
}
\value{
species name standardized under taxize package
}
\description{
standardize species names.
}
