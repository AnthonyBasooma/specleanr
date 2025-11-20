# Preliminary data cleaning including removing duplicates, records outside a particular basin, and NAs.

Preliminary data cleaning including removing duplicates, records outside
a particular basin, and NAs.

## Usage

``` r
pred_extract(
  data,
  raster,
  lat = NULL,
  lon = NULL,
  bbox = NULL,
  colsp,
  minpts = 10,
  mp = TRUE,
  rm_duplicates = TRUE,
  na.rm = TRUE,
  na.inform = FALSE,
  list = TRUE,
  merge = FALSE,
  verbose = FALSE,
  warn = FALSE,
  coords = FALSE
)
```

## Arguments

- data:

  `dataframe`. Data frame with multiple species or only one species for
  checking records with no coordinates, duplicates, and check for
  records that fall on land, sea, country or city centroids, and
  geographical outliers(Zzika et al., 2022).

- raster:

  `raster`. Environmental layers from different providers such as
  WORLDCLIM (), Hydrogaphy90m (), CHELSA, Copernicus ().

- lat, lon:

  `coordinates`. variable for latitude and longitude column names.

- bbox:

  `sf` or `vector`. Object of class 'shapefile' If only a particular
  basin is considered. Bounding box vector points can also be provided
  in the form `"c(xmin, ymin, xmax, ymax)"`. `xmin` is the minimum
  longitude, `ymin` is the minimum latitude, `xmax` is the maximum
  longitude and `xmax` is the minimum latitude.

- colsp:

  `string`. variable already in the data that determine the groups to
  considered when extracting data.

- minpts:

  `numeric`. Minimum number of records for the species after removing
  duplicates and those within a particular basin.

- mp:

  `logical`. If `TRUE`, then number of minimum records `minpts` should
  be provided to allow dropping groups with less records. This is
  significant if species distribution are going to be fitted.

- rm_duplicates:

  `logical` TRUE if the duplicates will removed based species
  coordinates and names. Default `TRUE`.

- na.rm:

  `logical` If TRUE, the missing values will be discarded after data
  extracted. DEFAULT TRUE.

- na.inform:

  `logical` If TRUE, the missing values will be discarded after data
  extracted and message will be returned. DEFAULT FALSE.

- list:

  `logical`. If TRUE the a list of multiple species data frames will be
  generated and FALSE for a dataframe of species data sets. Default TRUE

- merge:

  `logical`. To add the other columns in the species data after data
  extraction. Default **TRUE**.

- verbose:

  `logical`. if TRUE message and warnings will be produced. Default
  `TRUE`.

- warn:

  `logical`. indicating to whether to show implementation warning or
  not. Default `FALSE`.

- coords:

  `logical`. If TRUE, the original coordinates are also returned
  attached on the extracted dataset. Default FALSE.

## Value

`dataframe` or `list` of precleaned data sets for single or multiple
species.

## Examples

``` r
# \donttest{
data("efidata")

danube <- system.file('extdata/danube.shp.zip', package='specleanr')

danubebasin <- sf::st_read(danube, quiet=TRUE)

#Get environmental data

worldclim <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))

referencedata <- pred_extract(data = efidata,
                          raster= worldclim ,
                          lat ="decimalLatitude",
                          lon = 'decimalLongitude',
                          colsp = 'scientificName',
                          bbox = danubebasin,
                          list= TRUE, #list will be generated for all species
                          minpts = 7, merge=TRUE)
# }
```
