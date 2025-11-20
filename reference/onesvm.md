# Identify outliers using One Class Support Vector Machines

Identify outliers using One Class Support Vector Machines

## Usage

``` r
onesvm(
  data,
  kernel = "radial",
  tune = FALSE,
  exclude = NULL,
  output,
  tpar = list(gamma = 1^(-1:1), epislon = seq(0, 1, 0.1), cost = 2^2:4, nu = seq(0.05, 1,
    0.1)),
  boot = FALSE,
  pc = FALSE,
  var,
  pcvar = NULL
)
```

## Arguments

- data:

  Dataframe of environmental variables extracted from where the species
  was recorded present or absent.

- kernel:

  Either radial, linear

- tune:

  To performed a tuned version of one-class svm. High computation
  requirements needed.

- exclude:

  Exclude variables that should not be considered in the fitting the one
  class model, for example x and y columns or latitude/longitude or any
  column that the user doesnot want to consider.

- output:

  Either clean: for a dataset with no outliers or outlier: to output a
  dataframe with outliers.

- tpar:

  A list of parameters to be varied during tunning from the normal
  model.

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

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

nedata <- onesvm(data = refdata[["Thymallus thymallus"]], exclude = c("x", "y"),  output='outlier')

# }
```
