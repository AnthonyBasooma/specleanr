# Flags suspicious using the local outlier factor or Density-Based Spatial Clustering of Applications with Noise.

Flags suspicious using the local outlier factor or Density-Based Spatial
Clustering of Applications with Noise.

## Usage

``` r
xlof(
  data,
  output,
  minPts,
  exclude = NULL,
  metric = "manhattan",
  mode = "soft",
  pc = FALSE,
  boot = FALSE,
  var,
  pcvar = NULL
)
```

## Arguments

- data:

  Data frame of species records with environmental data

- output:

  Either clean: for data frame with no suspicious outliers or outlier:
  to return dataframe with only outliers.

- minPts:

  Minimum neighbors around the records.

- exclude:

  Exclude variables that should not be considered in the fitting the one
  class model, for example x and y columns or latitude/longitude or any
  column that the user doesn't want to consider.

- metric:

  Distance-based measure to examine the distance between variables.
  Default `manhattan`.

- mode:

  Either `soft` if mean is used or `robust` if mad is used. Default
  `soft`.

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

- var:

  The variable of concern, which is vital for univariate outlier
  detection methods

- pcvar:

  Principal component analysis to e used for outlier detection after
  PCA. Default `PC1`

## Value

Dataframe with or with no outliers.

## Examples

``` r
# \donttest{
data("efidata")

danube <- system.file('extdata/danube.shp.zip', package='specleanr')

db <- sf::st_read(danube, quiet=TRUE)

wcd <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))

refdata <- pred_extract(data = efidata, raster= wcd ,
                       lat = 'decimalLatitude',
                       lon= 'decimalLongitude',
                       colsp = "scientificName",
                      bbox = db,
                       minpts = 10)

lofout <- xlof(data = refdata[["Thymallus thymallus"]], exclude = c("x", "y"),
                output='outlier', metric ='manhattan',
                minPts = 10, mode = "soft")
# }
```
