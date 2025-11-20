# Identifies absolute outliers for multiple species.

Identifies absolute outliers for multiple species.

## Usage

``` r
multiabsolute(
  x,
  threshold = NULL,
  props = FALSE,
  warn = FALSE,
  autothreshold = FALSE
)
```

## Arguments

- x:

  `datacleaner` class for each methods used to identify outliers in
  `multidetect` function.

- threshold:

  `numeric`. Maximum value to denote an absolute outlier. The threshold
  ranges from `0`, which indicates a point has not been flagged by any
  outlier detection method as an `outlier`, to `1`, which means the
  record is an absolute or true outlier since all methods have
  identified it. At both extremes, many records are classified at low
  threshold values, which may be due to individual method weakness or
  strength and data distribution. Also, at higher threshold values, the
  true outliers are retained. For example, if ten methods are considered
  and 9 methods flag a record as an outlier, If a cutoff of 1 is used,
  then that particular record is retained. Therefore, the `default`
  cutoff is `0.6`, but `autothreshold` can be used to select the
  appropriate threshold.

- props:

  `dataframe`. To output the proportional absoluteness for each outlier.

- warn:

  `logical`. If **TRUE**, warning on whether absolute outliers obtained
  at a low threshold is indicated. Default **TRUE**.

- autothreshold:

  `vector`. Identifies the threshold with mean number of absolute
  outliers.The search is limited within 0.51 to 1 since thresholds less
  than are deemed inappropriate for identifying absolute outliers. The
  autothreshold is used when `threshold` is set to `NULL`.

## Value

vector or absolute outliers, best outlier detection method or data frame
of absolute outliers and their proportions

## See also

[`ocindex`](https://anthonybasooma.github.io/specleanr/reference/ocindex.md)

## Examples

``` r
# \donttest{

data(efidata)

danube <- system.file('extdata/danube.shp.zip', package='specleanr')

db <- sf::st_read(danube, quiet=TRUE)

wcd <- terra::rast(system.file('extdata/worldclim.tiff', package = "specleanr"))

extdf <- pred_extract(data = efidata, raster = wcd,
                      lat = 'decimalLatitude', lon = 'decimalLongitude',
                     colsp = "scientificName",
                     list = TRUE,verbose = FALSE,
                     minpts = 6,merge = FALSE)#basin removed

 #outlier detection
outliersdf <- multidetect(data = extdf, output='outlier', var = 'bio6',
                          exclude = c('x','y'), multiple = TRUE,
                          methods = c('mixediqr', "iqr", "mahal", "iqr", "logboxplot"))

totabs_counts <- multiabsolute(x = outliersdf, threshold = 0.2)

# }
```
