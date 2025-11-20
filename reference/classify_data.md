# Extract final clean data using either absolute or best method generated outliers.

Extract final clean data using either absolute or best method generated
outliers.

## Usage

``` r
classify_data(
  refdata,
  outliers,
  var_col = NULL,
  threshold = 0.1,
  warn = FALSE,
  verbose = TRUE,
  classify = "med",
  EIF = FALSE
)
```

## Arguments

- refdata:

  `dataframe`. The reference data for the species used in outlier
  detection.

- outliers:

  `string`. Output from the outlier detection process.

- var_col:

  `string`. A parameter to be used if the `data` is a data frame and the
  user must indicate the column with species names.

- threshold:

  `numeric`. Value to consider whether the outlier is an absolute
  outlier or not.

- warn:

  `logical`. If **FALSE**, warning on whether absolute outliers obtained
  at a low threshold is indicated. Default **TRUE**.

- verbose:

  `logical`. Produces messages or not. Default **FALSE**.

- classify:

  `string`. Categorize data base on the correlation coefficient manner
  based on `Akoglu 2018`. For more information check in the details
  section.

- EIF:

  `logical` To calculate the empirical influence function for each
  value.

## Value

Either a `list` or `dataframe` of cleaned records for multiple species.

## Details

Outlier cluster weights were based on statistical classification of
coefficients mostly for correlation based on `Akoglu 2018`. They are
classified based on three naming standards, namely Dancey & Reidy
(Physchology), Quinni piac University (Politics) and Chan YH medicine.
All classifications have been used in the function and each affects the
data clusters. The default is Chan YH (medicine).

## References

Akoglu, H. 2018. User’s guide to correlation coefficients. - Turk J
Emerg Med 18: 91–93.

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

extractabs <- classify_data(refdata = rdata, outliers = out_df)
# }
```
