# mth datasets with constant at each confidence interval levels.

A `tibble` The data consist the

## Usage

``` r
data(mth)
```

## Format

A `tibble` 7 rows and 9 columns.

## Details

The data is extracted from `(Schwertman & de Silva 2007)`.

## References

Schwertman NC, de Silva R. 2007. Identifying outliers with sequential
fences. Computational Statistics and Data Analysis 51:3800–3810.

## Examples

``` r
data("mth")
mth
#>       p        m1       m2       m3       m4      m5      m6
#> 1 0.750 0.2876820 0.961279 1.727300 2.535320 3.36860 4.21920
#> 2 0.800 0.2231440 0.824388 1.535040 2.296790 3.08954 3.90366
#> 3 0.900 0.1053605 0.531812 1.102070 1.744770 2.43259 3.15190
#> 4 0.950 0.0512932 0.355362 0.817691 1.366320 1.97015 2.61301
#> 5 0.975 0.0253180 0.242209 0.618672 1.089870 1.62349 2.20189
#> 6 0.990 0.0100503 0.148555 0.436045 0.823249 1.27911 1.78528
#> 7 0.995 0.0050130 0.103495 0.337873 0.672207 1.07793 1.53691


```
