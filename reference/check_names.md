# Check species names for inconsistencies

Check species names for inconsistencies

## Usage

``` r
check_names(
  data,
  colsp = NULL,
  verbose = FALSE,
  pct = 90,
  merge = FALSE,
  sn = FALSE,
  ecosystem = FALSE,
  rm_duplicates = FALSE
)
```

## Arguments

- data:

  `dataframe`. Data frame with species names to checked from FishBase.

- colsp:

  `string`. A column in the data with the species column names.

- verbose:

  `logical`. To indicate the merges during checking of names. The
  default is FALSE not to show whether the species are in Fish base or
  not found.

- pct:

  `numeric`. The percentage similarity used to assign a relatively
  similar name from FishBase if the exact match is absent. Default 90
  The higher the values, the higher percentage similarity are considered
  to replace a species name that is cheeked from Fishbase.

- merge:

  `logical`. Default is **FALSE**, not to merge the cleaned species
  column on to the data frame but rather only two columns returned.

- sn:

  `logical`. Whether to consider synonyms. Default FALSE so accepted
  names will be considered from FishBase database.

- ecosystem:

  `logical` Returns whether the species is freshwater, marine , or
  brackish or a combination for for estuarine loving species.

- rm_duplicates:

  `logical`. If TRUE, removes all duplicate species names especially
  when a dataframe is is the output from the function.

## Value

Data frame or names of corrected or cleaned species names.

## Details

The function produces a data set with species names corresponding with
[Fishase](https://www.fishbase.se/). If synonym is provided in the data
set, the function will by defualt return the accepted name. However, if
the synoymn is desired, then set the sn parameter to **TRUE**. The
function also check for spellings of species names and returns a name
that is closer to the one in FishBase with a particular degree of
similarity set with pct parameter. pct of 1 indicates the name must 100
The user can iterate with different pct and decide if the return name is
right or wrong. This function is not necessary if the species names are
clean and also for other taxa.

## See also

[`match_datasets`](https://anthonybasooma.github.io/specleanr/reference/match_datasets.md)
for standardizing and binding datasets.

## Examples

``` r
if (FALSE) { # \dontrun{

data(jdsdata)

data(efidata)

#step 1. match and bind datasets if more than one datasets

matchdata <- match_datasets(datasets = list(jds = jdsdata, efi = efidata),
                          lats = 'lat',
                          lons = 'lon',
                          species = c('speciesname','scientificName'),
                          country=c('JDS4_site_ID'),
                          date=c('Date', 'sampling_date'))

#clean species names to produce one dataset.

datafull <- check_names(data= matchdata, colsp='species', pct = 90, merge = TRUE)

data2col <- check_names(data = matchdata, colsp='species', pct = 90) #two columns generated

cleansp_name <- check_names(data= 'slamo trutta', pct=90) #wrong names vs FB suggestion

clean_sp_epithet <- check_names(data = 'Salmo trutta fario') #Salmo trutta will be returned

speciesepithet2 <- check_names(data = 'Salmo trutta lacustris', pct=90)

} # }
```
