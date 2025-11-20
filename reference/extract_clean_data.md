# Extract final clean data using either absolute or best method generated outliers.

Extract final clean data using either absolute or best method generated
outliers.

## Usage

``` r
extract_clean_data(
  refdata,
  outliers,
  mode = "abs",
  var_col = NULL,
  threshold = NULL,
  warn = FALSE,
  verbose = FALSE,
  autothreshold = FALSE,
  pabs = 0.1,
  loess = FALSE,
  outlier_to_NA = FALSE,
  cutoff = 0.6
)
```

## Arguments

- refdata:

  `dataframe`. The reference data for the species used in outlier
  detection.

- outliers:

  `string`. Output from the outlier detection process.

- mode:

  `character`. Either `abs` to use absolute outliers to filter data or
  `best` to outliers from best method.

- var_col:

  `string`. A parameter to be used if the `data` is a data frame and the
  user must indicate the column wih species names.

- threshold:

  `numeric`. Value to consider whether the outlier is an absolute
  outlier or not.

- warn:

  `logical`. If **FALSE**, warning on whether absolute outliers obtained
  at a low threshold is indicated. Default **TRUE**.

- verbose:

  `logical`. Produces messages or not. Default **FALSE**.

- autothreshold:

  `vector`. Identifies the threshold with mean number of absolute
  outliers.The search is limited within 0.51 to 1 since thresholds less
  than are deemed inappropriate for identifying absolute outliers. The
  autothreshold is used when `threshold` is set to `NULL`.

- pabs:

  `numeric`. Percentage of outliers allowed to be extracted from the
  data. If `best` is used to extract outliers and the `pabs` is
  exceeded, the absolute outliers are removed instead. This because some
  records in the best methods are repeated and they will likely to
  remove true values as outliers.

- loess:

  `logical`. Set to `TRUE` to use loess threshold optimization to
  extract clean data.

- outlier_to_NA:

  `logical` If `TRUE` a clean dataset will have outliers replaced with
  NAs. This parameter is experimented to ouput dataframe when multiple
  variables of concerns are considered during outlier detection.

  \###param multiple TRUE for multiple species and FALSE for single
  species considered during outlier detection.

- cutoff:

  `numeric`. Ranging from 0.5 to 0.8 indicating the cutoff to initiate
  the LOESS model to optimize the identification of absolute outliers.

## Value

Either a `list` or `dataframe` of cleaned records for multiple species.

## See also

[`search_threshold`](https://anthonybasooma.github.io/specleanr/reference/search_threshold.md)

## Examples

``` r
# \donttest{
data(jdsdata)
data(efidata)
matchdata <- match_datasets(datasets = list(jds = jdsdata, efi = efidata),
                            lats = 'lat',
                            lons = 'lon',
                            species = c('speciesname','scientificName'),
                            country= c('JDS4_site_ID'),
                            date=c('sampling_date', 'Date'))


danube <- system.file('extdata/danube.shp.zip', package='specleanr')

db <- sf::st_read(danube, quiet=TRUE)


worldclim <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))

rdata <- pred_extract(data = matchdata,
                      raster= worldclim ,
                      lat = 'decimalLatitude',
                      lon= 'decimalLongitude',
                      colsp = 'species',
                      bbox = db,
                      minpts = 10,
                      list=TRUE,
                      merge=FALSE)


out_df <- multidetect(data = rdata, multiple = TRUE,
                      var = 'bio6',
                      output = 'outlier',
                      exclude = c('x','y'),
                      methods = c('zscore', 'adjbox','iqr', 'semiqr','hampel'))

#extracting use the absolute method for one species

extractabs <- extract_clean_data(refdata = rdata, outliers = out_df,
                                 mode = 'abs', threshold = 0.6,
                                 autothreshold = FALSE)

bestmout_bm <- extract_clean_data(refdata = rdata, outliers = out_df,
                                  mode = 'best', threshold = 0.6,
                                 autothreshold = FALSE)
# }
```
