
data("jdsdata")
data("efidata")

#get records outside danube to test for extent warnings
salm_ext <- getdata(data = "Salmo trutta", gbiflim = 5, vertlim = 5, inatlim = 5, verbose = FALSE)

matchd <- match_datasets(datasets = list(jds= jdsdata, efi =efidata, online = salm_ext),
                          lats = 'lat', lons = 'lon',
                          country = 'JDS4_site_ID',
                          species = c('scientificName', 'speciesname'),
                          date=c('sampling_date','Date', "dates"))

sp <- check_names(data = matchd, colsp = 'species', verbose = F, pct = 90, merge = T, sn = FALSE)

db <- sf::st_read(dsn=system.file('extdata/danube.shp.zip', package='specleanr'), quiet=TRUE)

zz <- terra::rast(system.file('extdata/worldclim.tiff', package='specleanr'))


test_that(desc = 'Less number of records after discarding duplicates and missing values.',
          code = {

            expect_error(
              pred_extract(data = jdsdata,raster= zz , lat ='lat',lon = 'lon',
                           colsp = 'speciesname', bbox  = db, verbose = F,
                           list= TRUE, minpts = 10, merge=T))
            #expect error when minpts is less than 2

            expect_error(
              pred_extract(data = sp,raster= zz , lat ='decimalLatitude',lon = 'decimalLongitude',
                           colsp = 'species', bbox  = db,  verbose = F,
                           list= TRUE, minpts = 2))
          }
)



testthat::test_that(desc = "Check if merge increase the number of columns on the reference dataset.",
                    code = {
                      #return other original columns on the dataset
                      mergedf <- pred_extract(data = sp,raster= zz ,
                                   lat ='decimalLatitude',lon = 'decimalLongitude',colsp = 'species',
                                   bbox  = db, verbose = F,
                                   list= FALSE,minpts = 10, merge=T)

                      nomergedf <- pred_extract(data = sp,raster= zz ,
                                              lat ='decimalLatitude',lon = 'decimalLongitude',colsp = 'species',
                                              bbox  = db, verbose = F,
                                              list= FALSE,minpts = 10, merge=F)

                      testthat::expect_gt(ncol(mergedf), ncol(nomergedf))

                    })
test_that(desc = "Errors and success",
          code = {
            #expect error for missing species data
            expect_error(pred_extract(raster= zz ,
                                      lat ='decimalLatitude',
                                      lon = 'decimalLongitude',colsp = 'species',
                                      bbox  = db, verbose = F,
                                      list= FALSE,minpts = 10, merge=F))
            #expect error if colsp is not in the data

            expect_error(pred_extract(data = sp,raster= zz ,
                         lat ='decimalLatitude',lon = 'decimalLongitude',colsp = 'speciesnotindf',
                         bbox  = db, verbose = F,
                         list= FALSE,minpts = 10, merge=F))
          })

#return warning if some species records are outside the raster provided

test_that(desc = "Expect wanring records oustide raster layer",
          code = {
            expect_type(suppressWarnings(pred_extract(data = sp,
                                                          raster= zz,
                                        lat ='decimalLatitude',
                                        lon = 'decimalLongitude',colsp = 'species',
                                        bbox  = db, verbose = F,
                                        list= FALSE,minpts = 10, warn=TRUE)), 'list')
          })

test_that(desc = "Use numeric bbox instead of sf format",
          code = {
            expect_type(pred_extract(data = sp,raster= zz ,
                         lat ='decimalLatitude',
                         lon = 'decimalLongitude',
                         colsp = 'species', bbox  = c(8.15250, 42.08333, 29.73583, 50.24500),
                         verbose = F,
                         list= TRUE, minpts = 10), 'list')

            #don't use bounding box
            expect_type(pred_extract(data = sp,raster= zz ,
                         lat ='decimalLatitude',
                         lon = 'decimalLongitude',
                         colsp = 'species',verbose = F,
                         list= TRUE, minpts = 10), 'list')

          })


