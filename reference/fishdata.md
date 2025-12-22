# Fish species occurrences obtained from GBIF, iNaturalist and VertNet.

A `tibble`

## Usage

``` r
data(fishdata)
```

## Format

A `tibble` 400 rows and 8 columns.

## Details

The data was incorporated for testing the package only and the licence
for citation and further use are included in the file.

## References

gbif, iNaturalist and VertNet

## Examples

``` r
data("fishdata")
fishdata
#> # A tibble: 400 × 8
#>    decimalLatitude decimalLongitude species  dates license country quality_grade
#>              <dbl>            <dbl> <chr>    <chr> <chr>   <chr>   <chr>        
#>  1            46.6             13.8 Squaliu… 2025  http:/… Austria expert based 
#>  2            48.0             16.2 Squaliu… 2025  http:/… Austria expert based 
#>  3            48.0             16.2 Squaliu… 2025  http:/… Austria expert based 
#>  4            46.6             13.8 Squaliu… 2025  http:/… Austria expert based 
#>  5            46.6             13.8 Squaliu… 2025  http:/… Austria expert based 
#>  6            48.2             11.5 Squaliu… 2025  http:/… Germany expert based 
#>  7            47.3             15.5 Squaliu… 2025  http:/… Austria expert based 
#>  8            50.2             29.4 Squaliu… 2025  http:/… Ukraine expert based 
#>  9            48.0             16.2 Squaliu… 2025  http:/… Austria expert based 
#> 10            48.0             16.2 Squaliu… 2025  http:/… Austria expert based 
#> # ℹ 390 more rows
#> # ℹ 1 more variable: datasetname <chr>
```
