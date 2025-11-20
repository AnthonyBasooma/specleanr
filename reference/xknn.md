# k-nearest neighbors for outlier detection

k-nearest neighbors for outlier detection

## Usage

``` r
xknn(
  data,
  output,
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

  Data frame of species records with environmental data.

- output:

  Either clean: for data frame with no suspicious outliers or outlier:
  to return dataframe with only outliers.

- exclude:

  Exclude variables that should not be considered in the fitting the one
  class model, for example x and y columns or latitude/longitude or any
  column that the user doesn't want to consider.

- metric:

  The different metric distances to compute the distances among the
  environmental predictors. See `dist` function and how te different
  distances are applied. The different measures are allowed including
  `"euclidean", "maximum", "manhattan", "canberra", "binary"`.

- mode:

  This includes `soft` when the outliers are removed using mean to
  compute the z-scores or `robust` when median absolute deviation.

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

lofout <- xknn(data = refdata[["Thymallus thymallus"]], exclude = c("x", "y"),
                output='outlier', metric ='manhattan',
                 mode = "soft")

# }
```
