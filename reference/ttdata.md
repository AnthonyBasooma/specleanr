# Thymallus thymallus species data from GBIF and iNaturalist

A `tibble` Data from GBIF (https://www.gbif.org/) and iNaturalist
(https://www.inaturalist.org/)

## Usage

``` r
data(ttdata)
```

## Format

A `tibble` 100 rows and 8 columns.

## Details

The species data was collated from the Global Biodiversity Information
Facility and iNaturalist

## Examples

``` r
data("ttdata")
ttdata
#> # A tibble: 100 × 4
#>    species             decimalLatitude decimalLongitude country
#>    <chr>                         <dbl>            <dbl> <chr>  
#>  1 Thymallus thymallus            47.7             13.0 Austria
#>  2 Thymallus thymallus            47.7             13.1 Austria
#>  3 Thymallus thymallus            47.7             13.1 Austria
#>  4 Thymallus thymallus            47.6             13.2 Austria
#>  5 Thymallus thymallus            47.6             13.2 Austria
#>  6 Thymallus thymallus            47.6             13.2 Austria
#>  7 Thymallus thymallus            47.6             13.2 Austria
#>  8 Thymallus thymallus            47.7             13.1 Austria
#>  9 Thymallus thymallus            47.8             13.0 Austria
#> 10 Thymallus thymallus            47.8             13.0 Austria
#> # ℹ 90 more rows

```
