% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/outliermethods.R
\name{mahal}
\alias{mahal}
\title{Flags outliers based on Mahalanobis distance matrix for all records.}
\usage{
mahal(
  data,
  exclude = NULL,
  output = "outlier",
  mode = "soft",
  pdf = 0.95,
  tol = 1e-20,
  pc = FALSE,
  boot = FALSE,
  var,
  pcvar = NULL
)
}
\arguments{
\item{data}{\code{dataframe}. Dataframe to check for outliers or extract the clean data.}

\item{exclude}{\code{vector or string} Variables that should not be
considered in the executing the Mahalanobis distance matrix. These can be
coordinates such as latitude/longitude or any column that the user doesn't
want to consider.}

\item{output}{\code{string} Either \code{clean} for a data set with no outliers or \code{outlier} to
output a data frame with outliers.}

\item{mode}{\code{string} Either \code{robust}, if a robust mode is used which uses \code{auto} estimator to
instead of mean. Default mode is \code{soft}.}

\item{pdf}{\code{numeric} chisqure probability distribution value used for flagging outliers
\code{(Leys et al. 2018)}. Default is \code{0.95}.}

\item{tol}{\code{numeric} tolernce value when the inverse calculation are too
small. Default \code{1e-20}.}

\item{pc}{Whether principal component analysis will be computed. Default \code{FALSE}}

\item{boot}{Whether bootstrapping will be computed. Default \code{FALSE}}

\item{var}{The variable of concern, which is vital for univariate outlier detection methods}

\item{pcvar}{Principal component analysis to e used for outlier detection after PCA. Default \code{PC1}}
}
\value{
Either clean or outliers dataset
}
\description{
Flags outliers based on Mahalanobis distance matrix for all records.
}
\examples{

\dontrun{

data("efidata")

gbd <- check_names(data = efidata, colsp='scientificName', pct=90, merge=TRUE)

danube <- system.file('extdata/danube.shp.zip', package='specleanr')

db <- sf::st_read(danube, quiet=TRUE)

wcd <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))

refdata <- pred_extract(data = gbd, raster= wcd ,
                       lat = 'decimalLatitude',
                       lon= 'decimalLongitude',
                       colsp = 'speciescheck',
                      bbox = db,
                       minpts = 10)

#outliers
outliers <- mahal(data = refdata[['Salmo trutta']], exclude = c("x", "y"),
                        output='outlier')


}
}
\references{
Leys C, Klein O, Dominicy Y, Ley C. 2018. Detecting multivariate outliers:
Use a robust variant of the Mahalanobis distance. Journal of Experimental
Social Psychology 74:150-156.
}
