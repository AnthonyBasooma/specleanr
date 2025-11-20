# Identify outliers using isolation forest model.

Identify outliers using isolation forest model.

## Usage

``` r
isoforest(
  data,
  size,
  cutoff = 0.5,
  output,
  exclude = NULL,
  pc = FALSE,
  boot = FALSE,
  pcvar = NULL,
  var
)
```

## Arguments

- data:

  Dataframe of environmental variables extracted from where the species
  was recorded present or absent.

- size:

  Proportion of data to be used in training isolation forest n´model. It
  ranges form 0.1 (fewer data selected ) to 1 to all data used in
  training isolation model.

- cutoff:

  Cut to select where the record was an outlier or not.

- output:

  Either clean: for a data set with no outliers or outlier: to output a
  dataframe with outliers. Default is 0.5.

- exclude:

  Exclude variables that should not be considered in the fitting the one
  class model, for example x and y columns or latitude/longitude or any
  column that the user doesn't want to consider.

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

- pcvar:

  Principal component analysis to e used for outlier detection after
  PCA. Default `PC1`

- var:

  The variable of concern, which is vital for univariate outlier
  detection methods

## Value

Dataframe with or with no outliers.

## References

1.  Liu FeiT, Ting KaiM, Zhou Z-H. 2008. Isolation Forest. Pages 413–422
    In 2008 Eighth IEEE International Conference on Data Mining.
    Available from https://ieeexplore.ieee.org/abstract/document/4781136
    (accessed November 18, 2023).

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

iosd <- isoforest(data = refdata[["Thymallus thymallus"]], size = 0.7,  output='outlier',
                  exclude = c("x", "y"))
# }
```
