# Identifies outliers using Reverse Jackknifing method based on Chapman et al., (2005).

Identifies outliers using Reverse Jackknifing method based on Chapman et
al., (2005).

## Usage

``` r
jknife(
  data,
  var,
  output = "outlier",
  mode = "soft",
  pc = FALSE,
  pcvar = NULL,
  boot = FALSE
)
```

## Arguments

- data:

  Dataframe to check for outliers

- var:

  Variable considered in flagging suspicious outliers.

- output:

  Either clean: for data frame with no suspicious outliers or outlier:
  to return data frame with only outliers

- mode:

  Either robust, if a robust mode is used which uses median instead of
  mean and median absolute deviation from median or mad instead of
  standard deviation.

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

Reverse jackknifing was specifically developed to detect error climate
profiles `(Chapman 1991, 1999)`. The method has been applied in
detecting outliers in environmental data
`(García-Roselló et al. 2014; Robertson et al. 2016)` and incorporated
in the DIVAS-GIS software `(Hijmans et al. 2001)`.

## References

1.  Chapman AD. 1991. Quality control and validation of environmental
    resource data in Data Quality and Standards. Pages 1-23. Canberra.
    Available from https://www.researchgate.net/publication/332537824.

2.  Chapman AD. 1999. Quality Control and Validation of Point-Sourced
    Environmental Resource Data. eds. . Chelsea,. Pages 409-418 in
    Lowell K, Jaton A, editors. Spatial accuracy assessment: Land
    information uncertainty in natural resources, 1st edition. MI: Ann
    Arbor Press., Chelsea.

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

jkout <- jknife(data = refdata[["Thymallus thymallus"]], var = 'bio6', output='outlier')

# }
```
