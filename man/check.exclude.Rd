% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{check.exclude}
\alias{check.exclude}
\title{indicate excluded columns.}
\usage{
check.exclude(x, exclude, quiet = TRUE)
}
\arguments{
\item{x}{\code{dataframe} with columns to where the columns are supposed to be removed.}

\item{exclude}{\code{string} or \code{vector} column names  to be checked if it is in the data.}

\item{quiet}{TRUE if implementation messages to be shown. Default \code{FALSE}.}
}
\value{
columns that are not in the dataframe.
}
\description{
indicate excluded columns.
}
