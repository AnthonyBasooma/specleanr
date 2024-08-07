% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/depindep.R
\name{dep}
\alias{dep}
\title{Threshold dependent parameters for species distribution model evaluations.}
\usage{
dep(observed, predicted, P, A)
}
\arguments{
\item{observed}{The observed occurrences of the species.}

\item{predicted}{The fitted model obtained from \code{sdmfit}}

\item{P}{Character for presence label. Important to indicate the presence/absence character to correctly compute the evaluation metric in \code{evaluate} function.}

\item{A}{Character for absence label. Important to indicate the presence/absence character to correctly compute the evaluation metric in \code{evaluate} function.}
}
\value{
A list of threshold dependent metrics after models evaluation.
}
\description{
Threshold dependent parameters for species distribution model evaluations.
}
\details{
These are threshold-dependent metrics which vary if the cutoff is changed. The default is 0.5 which indicates that probabilities greater than 0.5 are recorded as
the species is present and less than 0.5 indicates absence of a species. However, if the cutoff is increased, probabilities converted as positive reduce and also the
model evaluation metrics such as sensitivity, specificity or accuracy changes significantly. Different literature is used to compute the metrics including
\strong{\code{(Allouche et al. 2006)}} and \strong{\code{(Erickson & Kitamura 2021)}}.
}
\references{
\enumerate{
 \item Allouche O, Tsoar A, Kadmon R. 2006. Assessing the accuracy of species distribution models: Prevalence,
 kappa and the true skill statistic (TSS). Journal of Applied Ecology 43:1221-1232.
 \item Erickson BJ, Kitamura F. 2021. Magician's corner: 9. performance metrics for machine learning models.
 Radiology: Artificial Intelligence 3:1-7.
 }
}
\seealso{
\code{\link{sdmfit}}
}
