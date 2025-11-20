# Data harmonizing for offline data based on Darwin Core terms .

Data harmonizing for offline data based on Darwin Core terms .

## Usage

``` r
match_datasets(
  datasets,
  country = NULL,
  lats = NULL,
  lons = NULL,
  species = NULL,
  date = NULL,
  verbose = FALSE
)
```

## Arguments

- datasets:

  List of offline or online data to be merge. Each offline data set
  should be given a specific name for identification in the match data
  set.

- country:

  Indicate the **country** column names as they appear in the data sets
  to be merged.

- lats:

  Match the column names for latitude for each data set to be matched.
  The default latitude name is **decimalLatitude**. So, indicate the
  latitude name as it is referenced in all data sets to be matched.

- lons:

  Match the column names for latitude for each data set to be match. The
  default longitude name is **decimalLongitude**. So, indicate the
  longitude name as it is referenced in all data sets to be match.

- species:

  Indicate the species columns as they appear in the data sets to be
  matched. The default is **species**, so if the data set doesn't have
  species as the column name for scientific species names names,
  indicate the column name here.

- date:

  Indicate the **date** column names as they appear in the data sets to
  be matched.

- verbose:

  Messages during data matching. Default **FALSE**

## Value

Harmonized data set with standardized column names foe species names,
latitude, longitude, country and dates.

## Details

If a data set being matched has standard columns, namely
decimalLatitude, decimalLatutide, and species, then they are not
indicated while matching. Otherwise all column names with varying names
for the 5 parameters should be indicated.

## References

Wieczorek J, Bloom D, Guralnick R, Blum S, Döring M, Giovanni R, et al.
(2012) Darwin Core: An Evolving Community-Developed Biodiversity Data
Standard. PLoS ONE 7(1): e29715.
https://doi.org/10.1371/journal.pone.0029715.

## Examples

``` r
data(jdsdata)

data(efidata)

matchdfs <- match_datasets(datasets = list(jds = jdsdata, efi = efidata),
                           lats = 'lat',
                           lons = 'lon',
                           species = c('speciesname','scientificName'),
                           country=c('JDS4_site_ID'),
                           date=c('Date', 'sampling_date'))
```
