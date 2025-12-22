# Plant species occurences obtained from GBIF, iNaturalist and VertNet.

A `tibble`

## Usage

``` r
data(plantdf1)
```

## Format

A `tibble` 1600 rows and 8 columns.

## Details

The data was incorporated for testing the package only and the licence
for citation and further use are included in the file.

## References

gbif, iNaturalist and VertNet

## Examples

``` r
data("plantdf1")
plantdf1
#> # A tibble: 1,600 × 8
#>    decimalLatitude decimalLongitude species  dates license country quality_grade
#>              <dbl>            <dbl> <chr>    <chr> <chr>   <chr>   <chr>        
#>  1            49.4             8.51 Populus… 2025  http:/… Germany expert based 
#>  2            47.8            13.0  Populus… 2025  http:/… Austria expert based 
#>  3            48.4            11.9  Populus… 2025  http:/… Germany expert based 
#>  4            48.4            11.9  Populus… 2025  http:/… Germany expert based 
#>  5            48.0            16.3  Populus… 2025  http:/… Austria expert based 
#>  6            46.2             8.89 Populus… 2025  http:/… Switze… expert based 
#>  7            49.8            13.4  Populus… 2025  http:/… Czechia expert based 
#>  8            48.3             8.93 Populus… 2025  http:/… Germany expert based 
#>  9            49.1            18.6  Populus… 2025  http:/… Slovak… expert based 
#> 10            48.2            16.4  Populus… 2025  http:/… Austria expert based 
#> # ℹ 1,590 more rows
#> # ℹ 1 more variable: datasetname <chr>
```
