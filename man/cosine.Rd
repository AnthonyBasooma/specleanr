% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/similaritytests.R
\name{cosine}
\alias{cosine}
\title{Cosine similarity index based on (Gautam & Kulkarni 2014; Joy & Renumol 2020)}
\usage{
cosine(x, sp = NULL, threshold = NULL, warn = FALSE, autothreshold = FALSE)
}
\arguments{
\item{x}{\code{datacleaner} class for each methods used to identify outliers
in \code{multidetect} function.}

\item{sp}{\code{string}. Species name or index if multiple species are
considered during outlier detection.}

\item{threshold}{\code{numeric}. Maximum value to denote an absolute outlier.
The threshold ranges from \code{0}, which indicates a point has not been
flagged by any outlier detection method as an \code{outlier}, to \code{1},
which means the record is an absolute or true outlier since all methods
have identified it. At both extremes, many records are classified at low
threshold values, which may be due to individual method weakness or
strength and data distribution. Also, at higher threshold values, the true
outliers are retained. For example, if ten methods are considered and 9
methods flag a record as an outlier, If a cutoff of 1 is used, then that
particular record is retained. Therefore, the \code{default} cutoff is
\code{0.6}, but \code{autothreshold} can be used to select the appropriate
threshold.}

\item{warn}{\code{logical}. If \strong{TRUE}, warning on whether absolute
outliers obtained at a low threshold is indicated. Default \strong{TRUE}.}

\item{autothreshold}{\code{vector}. Identifies the threshold with mean number
of absolute outliers.The search is limited within 0.51 to 1 since
thresholds less than are deemed inappropriate for identifying absolute
outliers. The autothreshold is used when \code{threshold} is set to
\code{NULL}.}
}
\value{
best method for identifying outliers.
}
\description{
Cosine similarity index based on (Gautam & Kulkarni 2014; Joy & Renumol 2020)
}
\examples{

\dontrun{

data(efidata)

db <- sf::read_sf(system.file('extdata/danube/basinfinal.shp', package = "specleanr"), quiet = TRUE)

wcd <- terra::rast(system.file('extdata/worldclim.tiff', package = "specleanr"))

checkname <- check_names(data=efidata, colsp ='scientificName', pct = 90, merge = T)

extdf <- pred_extract(data = checkname, raster = wcd,
                    lat = 'decimalLatitude', lon = 'decimalLongitude',
                     colsp = 'speciescheck',
                     list = TRUE,verbose = F,
                     minpts = 6,merge = F)#basin removed

 #outlier detection

outliersdf <- multidetect(data = extdf, output='outlier', var = 'bio6',
                         exclude = c('x','y'), multiple = TRUE,
                         methods = c('mixediqr', "iqr", "mahal", "iqr", "logboxplot"),
                         showErrors = FALSE, warn = TRUE, verbose = FALSE, sdm = TRUE)

consineout <- cosine(x = outliersdf, sp= 8, threshold = 0.2)#


}

}
