# Checks for geographic ranges from FishBase

Checks for geographic ranges from FishBase

## Usage

``` r
geo_ranges(
  data,
  colsp = NULL,
  verbose = FALSE,
  pct = 90,
  sn = FALSE,
  warn = FALSE,
  synonym = fishbase(tables = "synonym"),
  ranges = fishbase(tables = "ranges")
)
```

## Arguments

- data:

  Dataframe or vector to retrieve ranges from FishBase.

- colsp:

  Column with species names from the data set.

- verbose:

  TRUE and messages will show. Default FALSE:

- pct:

  The percentage similarity of species names during standardization from
  FishBase.

- sn:

  TRUE and synonyms will be generated and not accepted ones. Default is
  FALSE, where species accepted names will be produced.

- warn:

  FALSE, not to generate warnings and TRUE for warnings. Default is
  FALSE:

- synonym:

  A standard database for species synonym names from FishBase. See
  [FishBase](https://www.fishbase.se/) for more information.

- ranges:

  A standard database for ecological ranges from FishBase. See
  [FishBase](https://www.fishbase.se/) for more information.

## Value

Dataframe with geographical corrected ranges for species from FishBase.

## Examples

``` r
if (FALSE) { # \dontrun{

gr <- geo_ranges(data= "Lates niloticus")

} # }

```
