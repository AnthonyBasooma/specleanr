# Median rule method

Median rule method

## Usage

``` r
medianrule(data, var, output, x = 2.3, pc = FALSE, pcvar = NULL, boot = FALSE)
```

## Arguments

- data:

  Dataframe or vector where to check outliers.

- var:

  Variable to be used for outlier detection if **data** is not a vector
  file.

- output:

  Either **clean**: for clean data output without outliers;
  **outliers**: for outlier data frame or vectors.

- x:

  A constant for flagging outliers.

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

- pcvar:

  Principal component analysis to e used for outlier detection after
  PCA. Default `PC1`

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

## Value

Either clean or outliers.

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

 medout <- medianrule(data = refdata[["Thymallus thymallus"]], var = 'bio6', output='outlier')
# }
```
