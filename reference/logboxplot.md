# Log boxplot based for outlier detection.

Log boxplot based for outlier detection.

## Usage

``` r
logboxplot(data, var, output, x = 1.5, pc = FALSE, pcvar = NULL, boot = FALSE)
```

## Arguments

- data:

  Dataframe or vector where to check outliers.

- var:

  Variable to be used for outlier detection if **data** is not in a
  vector format.

- output:

  Either **clean**: for clean data output without outliers;
  **outliers**: for outlier data frame or vectors.

- x:

  The constant for creating lower and upper fences. Extreme is 3, but
  default is 1.5.

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

- pcvar:

  Principal component analysis to e used for outlier detection after
  PCA. Default `PC1`

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

## Value

Dataframe with our without outliers depending on the output.

- clean:

  Data without outliers.

- outlier:

  Data with outliers.

## Details

The loxplot for outlier detection **Barbato et al. (2011)** modifies the
the interquartile range method to detect outlier but considering the
sample sizes while indicating the fences (lower and upper fences).

\$\$ lowerfence = \[Q1 -1.5\*IQR\[1+0.1 \* log(n/10)\]\$\$

\$\$upperfence = \[Q3 +1.5\*IQR\[1+0.1 \*log(n/10)\]\$\$

Where; Q1 is the lower quantile and Q3 is the upper quantile. The method
consider the sample size in setting the fences, to address the weakness
of the interquartile range method *(Tukey, 1977)*. However. similar to
IQR method for flagging outlier, log boxplot modification is affected by
data skewness and which can be address using
[distboxplot](https://anthonybasooma.github.io/specleanr/reference/distboxplot.md),
[`seqfences`](https://anthonybasooma.github.io/specleanr/reference/seqfences.md),
[`mixediqr`](https://anthonybasooma.github.io/specleanr/reference/mixediqr.md)
and
[`semiIQR`](https://anthonybasooma.github.io/specleanr/reference/semiIQR.md).

## References

Barbato G, Barini EM, Genta G, Levi R. 2011. Features and performance of
some outlier detection methods. Journal of Applied Statistics
38:2133-2149

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

 logout <- logboxplot(data = refdata[["Thymallus thymallus"]], var = 'bio6', output='outlier')

# }
```
