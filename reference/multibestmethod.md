# Identify best method for outlier removal for multiple species using majority votes.

Identify best method for outlier removal for multiple species using
majority votes.

## Usage

``` r
multibestmethod(
  x,
  threshold = NULL,
  warn = FALSE,
  verbose = FALSE,
  autothreshold = FALSE
)
```

## Arguments

- x:

  Output from the outlier detection.

- threshold:

  value to consider whether the outlier is an absolute outlier or not.

- warn:

  If **TRUE**, warning on whether absolute outliers obtained at a low
  threshold is indicated. Default **FALSE**.

- verbose:

  Produce messages on the process or not. Default **FALSE**.

- autothreshold:

  Identifies the threshold with mean number of absolute outliers.The
  search is limited within 0.51 to 1 since thresholds less than are
  deemed inappropriate for identifying absolute outliers. The
  autothreshold is used when `threshold` is set to `NULL`.

## Value

best method for outlier detection for each species

## Examples

``` r
# \donttest{


danube <- system.file('extdata/danube.shp.zip', package='specleanr')

db <- sf::st_read(danube, quiet=TRUE)

wcd <- terra::rast(system.file('extdata/worldclim.tiff', package = "specleanr"))

preddata <- pred_extract(data = efidata, raster = wcd,
                      lat = 'decimalLatitude', lon = 'decimalLongitude',
                     colsp = 'scientificName',
                     list = TRUE,verbose = FALSE,
                     minpts = 6,merge = FALSE)#'basin removed

 #outlier detection

outliersdf <- multidetect(data = preddata, multiple = TRUE,
                      var = 'bio6',
                      output = 'outlier',
                      exclude = c('x','y'),
                      methods = c('zscore', 'adjbox','iqr', 'semiqr','hampel', 'kmeans',
                                  'logboxplot', 'lof','iforest', 'mahal', 'seqfences'))

multbm <- multibestmethod(x = outliersdf, threshold = 0.2)#
# }
```
