# Identifies the best method for outlier detection for a single species.

Identifies the best method for outlier detection for a single species.

## Usage

``` r
bestmethod(
  x,
  sp = NULL,
  threshold = NULL,
  autothreshold = FALSE,
  warn = FALSE,
  verbose = FALSE
)
```

## Arguments

- x:

  List of dataframes for each methods used to identify outliers in
  **`multdetect`** function.

- sp:

  species name or index if multiple species are considered during
  outlier detection.

- threshold:

  Maximum value to denote an absolute outlier. The threshold ranges from
  `0` which indicates a point has not been flagged by any outlier
  detection method as an `outlier` or `1`, when means the record is an
  absolute or true outlier sicen it has been identified by all methods.
  At both extremes, at low threshold values, many records are
  classified, which may be due to individual method weakness or strength
  and data distribution. Also, at higher threshold values, the true
  outliers are retained Fo example, if 10 methods are considered and 9
  methods flags a record as an outlier, If a cut off 1 is used, then
  that particular record is retained. Therefore the `default` cutoff is
  0.6 but `autothreshold` can be used to select the appropriate
  threshold.

- autothreshold:

  Identifies the threshold with mean number of absolute outliers.The
  search is limited within 0.51 to 1 since thresholds less than are
  deemed inappropriate for identifying absolute outliers. The
  autothreshold is used when `threshold` is set to `NULL`.

- warn:

  If **`TRUE`**, warning on whether absolute outliers obtained at a low
  threshold is indicated. Default **`TRUE`**.

- verbose:

  if `TRUE` then messages and warnings will be produced. Default
  `FALSE`.

## Value

best method for identifying outliers.

## Examples

``` r
# \donttest{

data("efidata")
data("jdsdata")

matchdata <- match_datasets(datasets = list(jds = jdsdata, efi=efidata),
                           lats = 'lat',
                           lons = 'lon',
                           species = c('speciesname','scientificName'),
                           date = c('Date', 'sampling_date'),
                           country = c('JDS4_site_ID'))


danube <- system.file('extdata/danube.shp.zip', package='specleanr')

db <- sf::st_read(danube, quiet=TRUE)

worldclim <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))

rdata <- pred_extract(data = matchdata,
                     raster= worldclim ,
                     lat = 'decimalLatitude',
                     lon= 'decimalLongitude',
                     colsp = 'species',
                     bbox = db,
                     minpts = 10,
                     list=TRUE,
                    merge=FALSE)


out_df <- multidetect(data = rdata, multiple = TRUE,
                     var = 'bio6',
                     output = 'outlier',
                     exclude = c('x','y'),
                     methods = c('zscore', 'adjbox','iqr', 'semiqr','hampel', 'kmeans',
                                 'logboxplot', 'lof','iforest', 'mahal', 'seqfences'))

bmout <- bestmethod(x = out_df, sp= 1, threshold = 0.2)
# }
```
