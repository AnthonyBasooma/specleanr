# Flag suspicious outliers based on the Hampel filter method..

Flag suspicious outliers based on the Hampel filter method..

## Usage

``` r
hampel(data, var, output, x = 3, pc = FALSE, pcvar = NULL, boot = FALSE)
```

## Arguments

- data:

  Data frame to check for outliers

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

Data frame with or with no outliers.

## Details

The Hampel filter method is a robust decision-based filter that
considers the median and MAD. Outliers lies beyond \$\$\[x-\*
lmbda\*MAD; x+ lmbda\*MAD\]\$\$ and lmbda of 3 was considered (Pearson
et al. 2016).

## References

Pearson Ronald, Neuvo Y, Astola J, Gabbouj M. 2016. The Class of
Generalized Hampel Filters. 2546-2550 2015 23rd European Signal
Processing Conference (EUSIPCO).

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

 hampout <- hampel(data = refdata[["Thymallus thymallus"]], var = 'bio6', output='outlier')
# }
```
