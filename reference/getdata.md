# Download species records from online database.

Download species records from online database.

## Usage

``` r
getdata(
  data,
  colsp = NULL,
  extent = NULL,
  db = c("gbif", "vertnet", "inat"),
  gbiflim = 50000,
  vertlim = 1000,
  inatlim = 3000,
  verbose = FALSE,
  warn = FALSE,
  pct = 80,
  sn = FALSE,
  ...
)
```

## Arguments

- data:

  `dataframe`, `list`, `vector`, `string`. data to retrieve records from
  online databases (GBIF, VertNET, and iNaturalist).

- colsp:

  `string`. A variable of species names. Provided if data is a data
  frame, so not required for lists and vector.

- extent:

  `vector` or `sf`. Bounding box to limit the download of records within
  a particular area. Otherwise all records from the GBIF will be
  downloaded. These can be provided in two forms, either a shapefile
  `(sf)` class accepted or provide a list of named `xmin`, `ymin`,
  `xmax`, and `ymax` in this particular order.

- db:

  `vector`. The different databases allowed including
  `'gbif', 'vertnet', and 'inat'`.

- gbiflim:

  `integer`. Limits on the records from the Global Biodiversity
  Information Platform

- vertlim:

  `integer`. Limits on the records from VertNET.

- inatlim:

  `integer`. Limits on the records from iNaturalist database.

- verbose:

  `logical`. **TRUE** if detailed messages should be indicated and
  **FALSE** if download messages are not needed. Default **TRUE**.

- warn:

  `logical`. To indicate if warning messages should be shown. Default
  `FALSE`.

- pct:

  `numeric`. The percentage similarity used to assign a relatively
  similar name from FishBase if the exact match is absent. Default 90
  The higher the values, the higher percentage similarity are considered
  to replace a species name that is cheeked from Fishbase.

- sn:

  `logical`. Whether to consider synonyms. Default FALSE so accepted
  names will be considered from FishBase database.

- ...:

  More function for species data download can be used. See
  [`rgbif::occ_data`](https://docs.ropensci.org/rgbif/reference/occ_data.html)
  for more information,
  [`rinat::get_inat_obs`](https://docs.ropensci.org/rinat/reference/get_inat_obs.html),
  and
  [`rvertnet::searchbyterm`](https://docs.ropensci.org/rvertnet/reference/searchbyterm.html).

## Value

Lists of species records from online databases

## Details

Note always check the validity of the species name with standard
database FishBase or World Register of Marine Species. If the records
are more than 50000 in GBIF, and extent can be provide to limit the
download.

## Examples

``` r
if (FALSE) { # \dontrun{

gbdata <- getdata(data = 'Gymnocephalus baloni', gbiflim = 100, inatlim = 100, vertlim = 100)

#Get for two species
sp_records <- getdata(data=c('Gymnocephalus baloni', 'Hucho hucho'),
                            gbiflim = 100,
                            inatlim = 100,
                            vertlim = 100)
#for only two databases
sp_records_2db <- getdata(data=c('Gymnocephalus baloni', 'Hucho hucho'),
                           db= c('gbif','inat'),
                            gbiflim = 100,
                            inatlim = 100,
                            vertlim = 100)

} # }

```
