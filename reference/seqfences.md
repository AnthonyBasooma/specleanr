# Sequential fences method

Sequential fences method

## Usage

``` r
seqfences(
  data,
  var,
  output,
  gamma = 0.95,
  mode = "eo",
  pc = FALSE,
  pcvar = NULL,
  boot = FALSE
)
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

- gamma:

  `numeric`. the p-values used to classify a record as an outlier. The
  lower the p-value, the extremeness is the outlier
  `Schwertman & de Silva 2007`.

- mode:

  `string`. Indicates the extremeness of the outlier.

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

- pcvar:

  Principal component analysis to e used for outlier detection after
  PCA. Default `PC1`

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

## Value

Dataframe or vector with or without outliers

## Details

Sequential fences is a modification of the TUKEY boxplot, where the data
is divided into groups each with its own fences
`Schwertman & de Silva 2007`. The groups can range from 1, which flags
mild outliers to 6 for extreme outliers ()

## References

1.  Schwertman NC, de Silva R. 2007. Identifying outliers with
    sequential fences. Computational Statistics and Data Analysis
    51:3800-3810.

2.  Schwertman NC, Owens MA, Adnan R. 2004. A simple more general
    boxplot method for identifying outliers. Computational Statistics
    and Data Analysis 47:165-174.

3.  Dastjerdy B, Saeidi A, Heidarzadeh S. 2023. Review of Applicable
    Outlier Detection Methods to Treat Geomechanical Data. Geotechnics
    3:375-396. MDPI AG.

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

 sqout <- seqfences(data = refdata[["Thymallus thymallus"]], var = 'bio6', output='outlier')
# }
```
