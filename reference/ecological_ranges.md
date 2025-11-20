# Check for environmental outliers using species optimal ranges.

Check for environmental outliers using species optimal ranges.

## Usage

``` r
ecological_ranges(
  data,
  var,
  output = "outlier",
  species = NULL,
  optimumSettings = list(optdf = NULL, optspcol = NULL, mincol = NULL, maxcol = NULL,
    ecoparam = NULL, direction = NULL),
  minval = NULL,
  maxval = NULL,
  lat = NULL,
  lon = NULL,
  ecoparam = NULL,
  direction = NULL,
  pct = 80,
  checkfishbase = FALSE,
  mode = NULL,
  warn = TRUE
)
```

## Arguments

- data:

  Dataframe with environmental predictors for a species or multiple
  species.

- var:

  Environmental parameter considered in flagging suspicious outliers.

- output:

  output Either clean: for dataframe with no suspicious outliers or
  outlier: to retrun dataframe with only outliers.

- species:

  The species should be indicated if the minimum `minval` and maximum
  values `maxval` are provided.

- optimumSettings:

  A list of optimal parameters are provided mostly when multiple species
  are examined.

  - `optdf`: is the dataframe with species optimal values (min, max, or
    ecoparam). This dataset can be generated from literature for
    different species.

  - `optspcol`: Is the column with species names in the `optdf` dataset.

  - `mincol`: Is the column name in the `optdf` with minimum values.

  - `maxcol`: Is the column name in the `optdf` with maximum values.

  - `ecoparam`: If in the `optdf` the minimum and maximum values are not
    found, then the the column with ecoparam should be provided.

  - `direction`: If ecoparam is provided in the `optdf`, then column for
    direction should be provided.

- minval, maxval:

  Minimum and maximum values (ranges) for a particular that are used to
  flag out values outside the ranges.

- lat, lon:

  If the `checkfishbase` and `mode` are set, then the columns for
  latitude longitude should be provided.

- ecoparam:

  This parameter is used only when the lower bound (minimum) and upper
  bound maximum or ranges are absent. For example, if only minimum value
  is present for a particular species, then ecoparam is set and the
  direction is provided whether lower, greater, equal, less/equal or
  greater/equal the ecoparam value provided.

- direction:

  This indicates if the provided ecological threshold `ecoparam` or
  ranges is greater than `greater`, less than `less`, equal `equal`,
  less or equal `le` or greater or equal `ge`. Íf the minimum and
  maximum values are known, then the `ecoparam` and `direction` should
  not be used.

- pct:

  The percentage similarity of the species name provided by the user and
  the one in FishBase. Only fish species names are checked with Fishbase
  but other taxa can be checked using `taxize` package.

- checkfishbase:

  Either `TRUE` to check for both temperatures `temp` and latitudinal or
  geographical ranges `geo`. If the `checkfishbase` is set to `TRUE`
  then the `mode` parameter must be set to either `geo or temp`. This
  function applies for only fish species.

- mode:

  Either `geo` or `temp` for latitudinal ranges or temperature ranges
  respectively. See
  [`thermal_ranges`](https://anthonybasooma.github.io/specleanr/reference/thermal_ranges.md)
  or
  [`geo_ranges`](https://anthonybasooma.github.io/specleanr/reference/geo_ranges.md)
  on how to obtain the data.

- warn:

  Either `TRUE` to return warning messages or `FALSE` for no warning
  messages. the defualt is `FALSE`:

## Value

Dataframe with or with no outliers.

## Examples

``` r
if (FALSE) { # \dontrun{

data("efidata")
data("jdsdata")

datafinal <- match_datasets(datasets = list(jds = jdsdata, efi=efidata),
                            lats = 'lat',
                            lons = 'lon',
                            species = c('speciesname','scientificName'),
                            date = c('Date', 'sampling_date'),
                            country = c('JDS4_site_ID'))

efidata <- check_names(data = datafinal, colsp='species', pct=90, merge=TRUE)

danube <- system.file('extdata/danube.shp.zip', package='specleanr')

db <- sf::st_read(danube, quiet=TRUE)

wcd <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))

refdata <- pred_extract(data = efidata, raster= wcd ,
                         lat = 'decimalLatitude', lon= 'decimalLongitude',
                        colsp = "scientificName",
                       bbox = db,
                        minpts = 10)

saldata <- refdata[["Thymallus thymallus"]]
#1. checking the annual maean temperature (bio1) are within the ranges in FishBase
salmotherange <- thermal_ranges(x = "Salmo trutta")

sdatatemp <- ecological_ranges(data = saldata, var = 'bio1', species = "Salmo trutta",
                              checkfishbase = TRUE, mode = 'temp', output = 'outlier')
#zero record no outliers
#====
#2. geographical ranges: latitude longitude
#geo ranges in fishbase
salgeorange <- geo_ranges(data = "Salmo trutta")
sdatageo <- ecological_ranges(data = saldata, lat = 'y', lon = 'x', output = 'outlier',
                              species = "Salmo trutta",
                              checkfishbase = TRUE, mode = 'geo')
#3. GENERAL LITERATURE RANGES
#======
#1. when the min and and max are provided
#multiple FALSE SHOULD BE SET
#3.1: If only the minimum value is present: assuming minimum temperature is 6, varible: bio1
#direction less than 6.0 is outlier and greater is not
sdata <- ecological_ranges(data = saldata, ecoparam = 6.0, var = 'bio1',
                           direction = 'greater' )
#3.2
sdata2 <- ecological_ranges(data = saldata, var = 'bio1', minval = 2,
                            maxval = 24, species = "Salmo trutta" )

#4. Multiple TRUE
#the optimal parameters should be provided in a dataframe format with min max, or ecoparam
#4.1 optimal dataset

optdata <- data.frame(species= c("Salmo trutta", "Abramis brama"),
                      mintemp = c(6, 1.6),maxtemp = c(20, 21),
                      meantemp = c(8.5, 10.4), #ecoparam
                      direction = c('greater', 'greater'))

#parameter used is annual mean temperature (WORLDCLIM)
#provide the column with species names in the environment dataset
#set optimal list parameter
#
# #optimal parameters
sdata3 <- ecological_ranges(data = saldata, species = 'Salmo trutta',
                            var = 'bio1', output = "outlier",
                            optimumSettings = list(optdf = optdata,maxcol = "maxtemp",
                                                   mincol ="mintemp",optspcol = "species"))
#
#
#only one ecological parameter (ecoparam is provided) and direction
sdata4 <- ecological_ranges(data = saldata, species = 'Salmo trutta', var = 'bio1',
                            output = "outlier",
                            optimumSettings = list(optdf = optdata,
                                                   ecoparam = "meantemp",
                                                   optspcol = "species",
                                                   direction= "direction"))
} # }
```
