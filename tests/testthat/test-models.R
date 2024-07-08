
#worldclim data for to extract environmental predictors
worldclim <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))

#get 500 records online using getdata function to compliment Salmo trutta records and basin polygon
#basin to get the bounding box to delineate the area of concern

db <- sf::st_read(system.file('extdata/danube/basinfinal.shp', package='specleanr'), quiet=TRUE)

salmonline <- getdata(data = "Salmo trutta", gbiflim = 500, inatlim = 3, vertlim = 3, bbox = db)

salextract <- extract_online(salmonline)

#merge both online and offline data and filter Salmo trutta

#select species with enough records

datafinal <- salextract[salextract[,'species'] == "Salmo trutta", ]

#initial data extraction and preliminary analysis

rdata <- pred_extract(data = datafinal, raster= worldclim ,lat = 'decimalLatitude',
                      lon= 'decimalLongitude', colsp = 'species', bbox  = db,
                      multiple = FALSE,minpts = 10, list=TRUE,
                      merge=F, verbose = F)

#apply ensemble outlier detection. Note: (x and y in exclude parameter are
#internally generally in pred_extract during environmental data extraction )

outliersdf <- multidetect(data = rdata, multiple = FALSE,
                          var = 'bio6',
                          output = 'outlier',
                          exclude = c('x','y'),
                          methods = c('zscore', 'adjbox','iqr', 'semiqr','hampel'))


testthat::test_that(desc = "Model output comparison",
                    code = {
                      modeout <- modelcomparison(refdata = rdata, outliers = outliersdf, raster = worldclim,
                                                 lat = 'y', lon = 'x', models = c("GLM"),
                                                 mode = 'best', testprop = 0.2, metrics = 'all',
                                                 thresholds = 0.2, full = FALSE, minpts = 10)

                      testthat::expect_equal(length(modeout), 1)

                      getperf <- get_performance(modeloutput = modeout)

                      testthat::expect_equal(nrow(getperf), 20)
                    })

