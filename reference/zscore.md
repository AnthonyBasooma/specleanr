# Computes z-scores to flag environmental outliers.

Computes z-scores to flag environmental outliers.

## Usage

``` r
zscore(
  data,
  var,
  output = "outlier",
  type = "mild",
  mode = "soft",
  pc = FALSE,
  pcvar = NULL,
  boot = FALSE
)
```

## Arguments

- data:

  Dataframe or vector to check for outliers.

- var:

  Variable considered in flagging suspicious outliers.

- output:

  Either **clean**: for data frame with no suspicious outliers or
  outlier: to return dataframe with only outliers.

- type:

  Either **mild** if zscore cut off is 2.5 or **extreme** if zscore is
  \>3.

- mode:

  Either robust, if a **robust** mode is used which uses median instead
  of mean and median absolute deviation from median.

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

- pcvar:

  Principal component analysis to e used for outlier detection after
  PCA. Default `PC1`

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

## Value

Data frame with or with no outliers.

## Details

The method uses mean as an estimator of location and standard deviation
for scale `(Rousseeuw & Hubert 2011)`, which both have zero breakdown
point, and their influence function is unbounded (robustness of an
estimator to outliers) `(Seo 2006; Rousseeuw & Hubert 2011)`. Because
both parameters are not robust to outliers, it leads to outlier masking
and swamping `(Rousseeuw & Hubert 2011)`. Records are flagged as
outliers if their Z-score exceeds 2.5 `(Rousseeuw & Hubert 2011)`.

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

 zout <- zscore(data = refdata[["Thymallus thymallus"]], var = 'bio6', output='outlier')
# }
```
