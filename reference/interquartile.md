# Computes interquartile range to flag environmental outliers

Computes interquartile range to flag environmental outliers

## Usage

``` r
interquartile(
  data,
  var,
  output,
  x = 1.5,
  pc = FALSE,
  pcvar = NULL,
  boot = FALSE
)
```

## Arguments

- data:

  Dataframe to check for outliers

- var:

  Variable considered in flagging suspicious outliers

- output:

  Either clean: for dataframe with no suspicious outliers or outlier: to
  retrun dataframe with only outliers.

- x:

  A constant to create a fence or boundary to detect outliers.

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

- pcvar:

  Principal component analysis to e used for outlier detection after
  PCA. Default `PC1`

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

## Value

Dataframe with or with no outliers.

## Details

Interquartile range (IQR) uses quantiles that are resistant to outliers
compared to mean and standard deviation (Seo 2006). Records were
considered as mild outliers if they fell outside the lower and upper
bounding fences \[Q1 (lower quantile) -1.5\*IQR (Interquartile range);
Q3 (upper quantile) +1.5\*IQR\] respectively
`(Rousseeuw & Hubert 2011)`. Extreme outliers were also considered if
they fell outside `\[Q1-3*IQR, Q3+3*IQR\]`
`(García-Roselló et al. 2014)`. However, using the interquartile range
assumes uniform lower and upper bounding fences, which is not robust to
highly skewed data (Hubert & Vandervieren 2008).

## References

Rousseeuw PJ, Hubert M. 2011. Robust statistics for outlier detection.
Wiley Interdisciplinary Reviews Data Mining and Knowledge Discovery
1:73-79.

## Examples

``` r
# \donttest{
data("efidata")

danube <- system.file('extdata/danube.shp.zip', package='specleanr')

db <- sf::st_read(danube, quiet=TRUE)

wcd <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))

refdata <- pred_extract(data = efidata, raster= wcd , lat = 'decimalLatitude',
                          lon= 'decimalLongitude',
                          colsp = "scientificName",
                          bbox = db,
                          minpts = 10)

 iqrout <- interquartile(data = refdata[["Thymallus thymallus"]], var = 'bio6', output='outlier')
# }
```
