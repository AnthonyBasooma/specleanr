# Optimize threshold for clean data extraction.

Optimize threshold for clean data extraction.

## Usage

``` r
optimal_threshold(
  refdata,
  outliers,
  var_col = NULL,
  warn = FALSE,
  verbose = FALSE,
  plotsetting = list(plot = FALSE, group = NULL),
  cutoff = 0.6
)
```

## Arguments

- refdata:

  `dataframe`. Species data frame from precleaned analysis.

- outliers:

  `datacleaner`. Datacleaner output with outliers flagged in
  `multidetect` function.

- var_col:

  `string`. A column with species names if `dataset` for species is a
  dataframe not a list. See
  [`pred_extract`](https://anthonybasooma.github.io/specleanr/reference/pred_extract.md)
  for extracting environmental data.

- warn:

  `logical`. If **TRUE**, warning on whether absolute outliers obtained
  at a low threshold is indicated. Default **TRUE**.

- verbose:

  `logical`. If true, then messages about the outlier flagging will be
  displayed.

- plotsetting:

  `list`. to show plot of loess fitted function with local and global
  maxima (optimal threshold and clean data). The list had two
  parameters. 1) plot to indicate the plot and group to provide the plot
  title.

- cutoff:

  `numeric`. Ranging from 0.5 to 0.8 indicating the cutoff to initiate
  the LOESS model to optimize the identification of absolute outliers.

## Value

Either a `list` or `dataframe` of cleaned records for multiple species.
