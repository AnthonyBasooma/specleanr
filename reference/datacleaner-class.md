# Outlier detection class for multiple methods

Outlier detection class for multiple methods

## Slots

- `result`:

  List of data sets with outliers detected.

- `mode`:

  Either ´TRUE´ for multiple species and FALSE for one species.

- `varused`:

  The variable used for outlier detection, useful for univariate outlier
  detection methods.

- `out`:

  Either outliers or clean dataset outputted.

- `methodsused`:

  The methods used in outlier detection.

- `dfname`:

  the dataframe name to aid tracking it during clean data extraction.

- `excluded`:

  whether some columns were excluded during outlier detection. useful
  for multivariate methods where coordinates are removed from the data.

- `pc`:

  parameters for principal component analysis.

- `bootstrap`:

  parameters for bootstrapping for small data sets.

- `nboots`:

  the number of bootstraps during bootstrapping.

- `pcvariable`:

  variable to be considered during PCA.

- `pcretained`:

  the number data columns retained. the default is 3.

- `maxrecords`:

  the maximum number of records used for bootstrapping.
