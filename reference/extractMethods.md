# List of outlier detection methods implemented in this package.

List of outlier detection methods implemented in this package.

## Usage

``` r
extractMethods()
```

## Value

List of methods

## Examples

``` r
extractMethods()
#> $reference
#> [1] "reference"
#> 
#> $univariate
#>  [1] "adjbox"      "iqr"         "hampel"      "jknife"      "seqfences"  
#>  [6] "mixediqr"    "distboxplot" "semiqr"      "zscore"      "logboxplot" 
#> [11] "medianrule" 
#> 
#> $clustermethods
#> [1] "kmeans"
#> 
#> $densistybased
#> [1] "lof"   "knn"   "glosh"
#> 
#> $optimal
#> [1] "optimal"
#> 
#> $modelbased
#> [1] "onesvm"  "iforest"
#> 
#> $covariance
#> [1] "mahal"
#> 

```
