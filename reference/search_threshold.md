# Determine the threshold using Locally estimated or weighted Scatterplot Smoothing.

Determine the threshold using Locally estimated or weighted Scatterplot
Smoothing.

## Usage

``` r
search_threshold(
  data,
  outliers,
  sp = NULL,
  plotsetting = list(plot = FALSE, group = NULL),
  var_col = NULL,
  warn = FALSE,
  verbose = FALSE,
  cutoff,
  tloss = seq(0.1, 1, 0.1)
)
```

## Arguments

- data:

  `Dataframe`. The reference dataframe were absolute outliers will be
  removed.

- outliers:

  `datacleaner`. Datacleaner output with outliers flagged in
  `multidetect` function.

- sp:

  `string`. Species name or index if multiple species are considered
  during outlier detection.

- plotsetting:

  `list`. to show plot of loess fitted function with local and global
  maxima (optimal threshold and clean data). The list had two
  parameters. 1) plot to indicate the plot and group to provide the plot
  title.

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

- cutoff:

  `numeric`. Ranging from 0.5 to 0.8 indicating the cutoff to initiate
  the LOESS model to optimize the identification of absolute outliers.

- tloss:

  `seqences` Indicates the sequence for tuning the the span parameter of
  the LOESS model.

## Value

Returns `numeric` of most suitable threshold at globalmaxima or
localmaxima of the loess smoothing.
