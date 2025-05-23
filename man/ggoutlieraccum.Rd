% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/outliers_accum.R
\name{ggoutlieraccum}
\alias{ggoutlieraccum}
\title{Identify if enough methods are selected for the outlier detection.}
\usage{
ggoutlieraccum(
  x,
  boots = 5,
  select = NULL,
  ncol = 3,
  linecolor = "blue",
  seed = 1134,
  sci = FALSE,
  xlab = "Number of methods",
  ylab = "Number of outliers",
  scales = "free"
)
}
\arguments{
\item{x}{\code{datacleaner}. The output from the outlier detection in \code{multidetect} function.}

\item{boots}{\code{interger}. The number of bootstraps to sample the outliers obtained during outlier
detection process. Start from a lower number such as 10 and increase serially to get a smoother
curve. High bootstrap may lead to crashing the Generalized Additive Model used to fit the
bootstraps and cumulative number of outliers.}

\item{select}{\code{vector}. If more than 10 groups are considered, then the at least should be seclected to hvae meaningful
visualization.}

\item{ncol}{\code{integer}. Number of columns if the groups are greater 4, to allow effective vizualisation.}

\item{linecolor}{\code{string} A parameter to indicate the color of the lines. The default is 'purple'.}

\item{seed}{\code{integer} To fix the random sampling during bootstrapping.}

\item{sci}{\code{logical}. If \code{sci} is TRUE, then the species names will be italised otherwise normal names will displayed. Default \code{FALSE}}

\item{xlab, ylab}{\code{string}. inherited from ggplot2 to changes x and y axis texts.}

\item{scales}{\code{string} Define if the x oy y axis will be shared or free. check \code{ggplot2} for details.}
}
\value{
ggplot2 output with cumulative number of outliers and number of methods used.
}
\description{
Identify if enough methods are selected for the outlier detection.
}
