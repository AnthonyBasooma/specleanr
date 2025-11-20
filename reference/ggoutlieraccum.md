# Identify if enough methods are selected for the outlier detection.

Identify if enough methods are selected for the outlier detection.

## Usage

``` r
ggoutlieraccum(
  x,
  boots = 5,
  select = NULL,
  ncol = 3,
  linecolor = "blue",
  seed = 1134,
  sci = FALSE,
  xlab = "Number of methods",
  ylab = "Number of outliers",
  scales = "free"
)
```

## Arguments

- x:

  `datacleaner`. The output from the outlier detection in `multidetect`
  function.

- boots:

  `interger`. The number of bootstraps to sample the outliers obtained
  during outlier detection process. Start from a lower number such as 10
  and increase serially to get a smoother curve. High bootstrap may lead
  to crashing the Generalized Additive Model used to fit the bootstraps
  and cumulative number of outliers.

- select:

  `vector`. If more than 10 groups are considered, then the at least
  should be seclected to hvae meaningful visualization.

- ncol:

  `integer`. Number of columns if the groups are greater 4, to allow
  effective vizualisation.

- linecolor:

  `string` A parameter to indicate the color of the lines. The default
  is 'purple'.

- seed:

  `integer` To fix the random sampling during bootstrapping.

- sci:

  `logical`. If `sci` is TRUE, then the species names will be italised
  otherwise normal names will displayed. Default `FALSE`

- xlab, ylab:

  `string`. inherited from ggplot2 to changes x and y axis texts.

- scales:

  `string` Define if the x oy y axis will be shared or free. check
  `ggplot2` for details.

## Value

ggplot2 output with cumulative number of outliers and number of methods
used.
