# Computes semi-interquantile range to flag suspicious outliers

Computes semi-interquantile range to flag suspicious outliers

## Usage

``` r
semiIQR(data, var, output, x = 3, pc = FALSE, pcvar = NULL, boot = FALSE)
```

## Arguments

- data:

  Dataframe to check for outliers

- var:

  Environmental parameter considered in flagging suspicious outliers

- output:

  Either clean: for dataframe with no suspicious outliers or outlier: to
  retrun dataframe with only outliers

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

SemiInterquantile Ranges introduced adjusts for whiskers on either side
to flag suspicious outliers \[Q1 – 3(Q2 (median) - Q1); Q3 + 3(Q3 -
Q2)\] `((Kimber 1990))`. However, SIQR introduced the same constant
values for bounding fences for the lower and upper quartiles
`(Rousseeuw & Hubert 2011)`, which leads to outlier swamping and
masking.

## References

Kimber AC. 1990. Exploratory Data Analysis for Possibly Censored Data
From Skewed Distributions. Page Source: Journal of the Royal Statistical
Society. Series C (Applied Statistics).

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

 semiout <- semiIQR(data = refdata[["Thymallus thymallus"]], var = 'bio6', output='outlier')
# }
```
