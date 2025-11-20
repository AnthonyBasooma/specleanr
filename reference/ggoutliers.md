# Visualize the outliers identified by each method

Visualize the outliers identified by each method

## Usage

``` r
ggoutliers(x, select = NULL, color = "purple", desc = TRUE, ncol = 2, nrow = 2)
```

## Arguments

- x:

  . the datacleaner object

- select:

  `vect`. Enter selected groups to be displayed especially if they are
  greater than 10. For example if the species are more than 10, the plot
  will be done in batches.

- color:

  `string`. Color of the bars. Default is `grey`.

- desc:

  `logical` To either arrange the bars in ascending or descending order.

- ncol, nrow:

  `integer` If number of groups are greater than 1, then number of rows
  and columns can be set. Check ggplot2 facet parameters on how the
  columns are set.

## Value

ggplot object indicating outlier detection methods and number of outlier
flagged.
