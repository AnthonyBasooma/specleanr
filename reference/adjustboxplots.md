# Adjust the boxplots bounding fences using medcouple to flag suspicious outliers.

Adjust the boxplots bounding fences using medcouple to flag suspicious
outliers.

## Usage

``` r
adjustboxplots(
  data,
  var,
  output = "outlier",
  a = -4,
  b = 3,
  coef = 1.5,
  pc = FALSE,
  pcvar = NULL,
  boot = FALSE
)
```

## Arguments

- data:

  `dataframe`. Dataframe to check for outliers.

- var:

  `string`. Environmental predictor considered in flagging suspicious
  outliers.

- output:

  `string` Either clean: for dataframe with no suspicious outliers or
  outlier: to return dataframe with only outliers.

- a:

  `numeric`. Constant for adjusted boxplots.

- b:

  `numeric`. Constant for adjusted boxplots.

- coef:

  `numeric`. Constant for adjusted boxplots.

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

- pcvar:

  Principal component analysis to e used for outlier detection after
  PCA. Default `PC1`

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

## Value

`dataframe`. Dataframe with or with no outliers.

## References

Hubert M, Vandervieren E. 2008. An adjusted boxplot for skewed
distributions. Computational Statistics and Data Analysis 52:5186-5201.

## Examples

``` r
# \donttest{
data("efidata")

danube <- system.file('extdata/danube.shp.zip', package='specleanr')

db <- sf::st_read(danube, quiet=TRUE)

wcd <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))

refdata <- pred_extract(data = efidata, raster= wcd ,
                      lat = 'decimalLatitude', lon= 'decimalLongitude',
                       colsp = "scientificName",
                       bbox = db,
                       minpts = 10)

adout <- adjustboxplots(data = refdata[["Thymallus thymallus"]], var = 'bio6', output='outlier')

# }
```
