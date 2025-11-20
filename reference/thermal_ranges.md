# Collates minimum, maximum, and preferable temperatures from FishBase.

Collates minimum, maximum, and preferable temperatures from FishBase.

## Usage

``` r
thermal_ranges(
  x,
  colsp = NULL,
  verbose = FALSE,
  pct = 90,
  sn = FALSE,
  synonym = fishbase(tables = "synonym"),
  ranges = fishbase(tables = "ranges")
)
```

## Arguments

- x:

  `dataframe` or `string`. species names or a dataframe of species to
  aid in retrieving temperature ranges from FishBase.

- colsp:

  `string`. if **`x`** is a data frame, then the column species is
  required. Otherwise for list of species or vector, the `colsp` is
  NULL.

- verbose:

  `logical` To return implementation messages. Default `FALSE`.

- pct:

  `numeric`. Provide the perecentage similarity of the species name
  provided and the one in FishBase. The lower the `pct` value, the
  higher the chances of getting a wrong species in the standard
  databases (FishBase). The plausible pct value should be greater than
  **0.9**.

- sn:

  `logical`. Either to output synonym or only accepted names. This
  parameter reduces duplication of species synonyms and old name etc.
  For more information see [FishBase](https://www.fishbase.se/).

- synonym:

  `fishbasedataframe`. A standard database for species synonym names
  from FishBase. See [FishBase](https://www.fishbase.se/) for more
  information.

- ranges:

  `fishbasedataframe`. A standard database for ecological ranges from
  FishBase. See [FishBase](https://www.fishbase.se/) for more
  information.

## Value

Data table for minimum, maximum and preferable species temperatures from
FishBase.

## Examples

``` r
if (FALSE) { # \dontrun{

x <- thermal_ranges(x = "Salmo trutta")
} # }
```
