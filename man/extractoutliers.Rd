% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extractoutliers.R
\name{extractoutliers}
\alias{extractoutliers}
\title{Extract outliers for a one species}
\usage{
extractoutliers(x, sp = NULL)
}
\arguments{
\item{x}{\code{list}. Outlier outputs for both single and multiple species.}

\item{sp}{\code{string}. Species name or index in the list from datacleaner output. NULL for a single species}
}
\value{
\code{data frame} Outliers for each method
}
\description{
Extract outliers for a one species
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
                         silence_true_errors = FALSE, warn = TRUE, verbose = FALSE, sdm = TRUE)

extoutlier <- extractoutliers(x=outliersdf, sp = 8)

}


}
