# Flags outliers based on Mahalanobis distance matrix for all records.

Flags outliers based on Mahalanobis distance matrix for all records.

## Usage

``` r
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
```

## Arguments

- data:

  `dataframe`. Dataframe to check for outliers or extract the clean
  data.

- exclude:

  `vector or string` Variables that should not be considered in the
  executing the Mahalanobis distance matrix. These can be coordinates
  such as latitude/longitude or any column that the user doesn't want to
  consider.

- output:

  `string` Either `clean` for a data set with no outliers or `outlier`
  to output a data frame with outliers.

- mode:

  `string` Either `robust`, if a robust mode is used which uses `auto`
  estimator to instead of mean. Default mode is `soft`.

- pdf:

  `numeric` chisqure probability distribution value used for flagging
  outliers `(Leys et al. 2018)`. Default is `0.95`.

- tol:

  `numeric` tolernce value when the inverse calculation are too small.
  Default `1e-20`.

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

Either clean or outliers dataset

## References

Leys C, Klein O, Dominicy Y, Ley C. 2018. Detecting multivariate
outliers: Use a robust variant of the Mahalanobis distance. Journal of
Experimental Social Psychology 74:150-156.

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

#outliers
outliers <- mahal(data = refdata[["Thymallus thymallus"]], exclude = c("x", "y"),
                        output='outlier')
# }
```
