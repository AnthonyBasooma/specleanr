# Title Plotting to show the quality controlled data in environmental space.

Title Plotting to show the quality controlled data in environmental
space.

## Usage

``` r
ggenvironmentalspace(
  qcdata,
  xvar = NULL,
  yvar = NULL,
  zvar = NULL,
  labelvar = NULL,
  type = "2D",
  xlab = NULL,
  ylab = NULL,
  zlab = NULL,
  ncol = 2,
  nrow = 2,
  scalecolor = "viridis",
  colorvalues = "auto",
  legend_position = "right",
  legend_inside = NULL,
  pointsize = 1,
  themebackground = "bw",
  fontsize = 13,
  legtitle = "blank",
  ggxangle = 1,
  xhjust = 0.5,
  xvjust = 1,
  main = NULL,
  pch = "auto",
  lpos3d = "left",
  cexsym = NULL
)
```

## Arguments

- qcdata:

  `dataframe` Data output from quality controlled function
  [`extract_clean_data`](https://anthonybasooma.github.io/specleanr/reference/extract_clean_data.md)
  and
  [`classify_data`](https://anthonybasooma.github.io/specleanr/reference/classify_data.md).

- xvar:

  `string` The variable to be on the x-axis.

- yvar:

  `string` The variable to be on the y-axis.

- zvar:

  `string` The variable to be on the z-axis only if the 3D plot type is
  selected..

- labelvar:

  `string` Column name in the quality controlled data that has the
  labels. This applies is the 3D plot is selected.

- type:

  `string` Its `1D`, `2D` for a two dimensional ggplot2 graph or `3D`
  for a 3-dimensional graph for multivariate data.

- xlab, ylab, zlab:

  `string` x-axis, y-axis, and z-axis label.

- ncol, nrow:

  `integer` If number of groups are greater than 1, then number of rows
  and columns can be set. Check ggplot2 facet parameters on how the
  columns are set.

- scalecolor:

  `string` The scale color themes supported are grey, manual, viridis.
  If `manual` is selected, then the `colorvalues` should be provided for
  the different colors for each data label.

- colorvalues:

  If `manual` is selected, then the `colorvalues` should be provided for
  the different colors for each data label. If 3D is selected and
  `colorvalues` is not `auto`, then colors should determined.

- legend_position:

  `string` Its either `bottom`, `top` or `inside`. If the `inside` is
  selected then the vector with graph coordinates should be provided to
  avoid the legend overlap with the graph contents.

- legend_inside:

  `vector` If the `inside` for legend position is selected then the
  vector with graph coordinates should be provided to avoid the legend
  overlap with the graph contents.

- pointsize:

  `decimal` The size of the points.

- themebackground:

  `string` Either `classic`, `bw` or `gray` to set the plot theme. This
  is based on ggplot2.

- fontsize:

  `integer` Indicates the sizes of fonts for the whole graph.

- legtitle:

  `string` Either `blank` or `TRUE` to set the legend title for the 2D
  plot.

- ggxangle:

  `integer` Indicates the angle of the x-axis text. The dafualt is 45
  but depend on the data.

- xhjust:

  `numeric` Indicates the distance of the x-axis text from the x-axis
  line in a vertical direction.

- xvjust:

  `numeric` Indicates the distance of the x-axis text from the x-axis
  line in a horizontal direction.

- main:

  `string` Plot title

- pch:

  `string` Either `auto`: the point characters will be automatically set
  or different pch are set.

- lpos3d:

  `string` Indicates the legend position for the 3D graph. bottom, left,
  and right are accepted.

- cexsym:

  `numeric` The size of pch in the 3D plot.

## Value

If "2D" or "1D" is the selected type, then a ggplot2 graph will be the
output and a "3D" type will return a scatterplot3D plot.
