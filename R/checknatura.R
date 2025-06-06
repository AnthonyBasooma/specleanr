


#' @title Download NATURA2000 data
#' @param x path to save European data files.
#' @param timeout Delay time while downloading
#' @importFrom utils read.csv
#'
#'
downloadnatura <- function(x, timeout=180){

  options(timeout = timeout)

  n2 <- .abspath(dir = x, verbose = F)

  download.file(url = 'https://cmshare.eea.europa.eu/s/HHGPnNsjqq5BdEa/download', destfile = file.path(n2, 'natura2000.zip'), mode = 'wb', method = 'libcurl')

  unzip(file.path(n2, 'natura2000.zip'), exdir = n2)

  unlink(file.path(n2, 'natura2000.zip'))

  #get species data
  urls <- 'https://sdi.eea.europa.eu/datashare/s/fAL7bpzZGHjiFL4/download?path=%2FTABULAR%2FCSV&files=Natura2000_end2021_rev1_SPECIES.csv'

  download.file(url = urls, destfile = file.path(n2, 'speciesnatura.csv'), mode = 'wb', method = 'libcurl')

  f <- list.files(path = file.path(n2), pattern = 'shp$', full.names = TRUE)

  s <- sf::st_read(f, quiet=T)

  sfile <- sf::st_transform(s, 4326)

  sdata <-  utils::read.csv(file = file.path(n2, 'speciesnatura.csv'))

  cat('Please visit https://www.eea.europa.eu/themes/biodiversity/natura-2000 for more information on the data.', '\n')

  return(list(sfile, sdata))
}



#' @title Check if the records are obtained within the NATURA2000 geographical ranges.
#'
#' @param data \code{dataframe}. Data input with species records. Only dataframe accepted.
#' @param species \code{string}. Column name containing species names.
#' @param lat,lon \code{coordinates}. Column in the data with latitude and longitudes coordinates.
#'    Only decimal degrees accepted.
#' @param verbose \code{logical}. TRUE, to show processing messages. Default FALSE
#' @param discard \code{logical}. TRUE to discard records outside the NATURA2000 sites and FALSE to retained then in the final dataset. Defualt TRUE
#' @param batch \code{logical}. TRUE, if the records have more than one species one species.
#'
#' @details
#' The function is aimed at identifying records that located in the NATURA2000 protected sites mostly for invasive species.
#'     If records of invasive species are recorded in the protected, then management measures are required to avoid the loss
#'     of ecosystem diversity and species which are threatened with extinction. Also, foe species distribution modelling,
#'     records in the protected areas are vital to predicts the areas that are occupied/invaded to derive priority based
#'     conservation. To better understand the species on the NATURA2000 list, \code{check_natura} function may be used.
#'
#'
#' @return Data set with records found in NATURA2000 polygon sites.
#' @export
#'
#' @examples
#'
#' \dontrun{
#'
#' data(efidata)
#'
#' spnat <- naturaranges(data= efidata, species = 'scientificName',
#'                       lon = 'decimalLongitude', lat='decimalLatitude',
#'                       verbose = T, batch = TRUE)
#'
#' }
#'
naturaranges <- function(data, species, lat, lon, verbose=FALSE, discard=TRUE, batch=FALSE){

  if(missing(data)) stop('Dataframe mising')

  if(is(data, 'vector') || is(data, 'atomic') || is(data, 'list')) stop('Only data.frame accepted for x input parametersss.')

  if(nrow(data)<1) stop('Data provided has zero reocrds. Check to contine.')

  xdf <- as.data.frame(data)

  nat_df <- .mem_files(fn=downloadnatura, path = 'natura2000') #path where information will be cached

  spsites <- nat_df[[2]]

  if(length(unique(unlist(xdf[, species])))>1 && batch==FALSE) stop('More than one species detected and batch processing is FALSE. Change to TRUE to continue or check species names.')

  if(isTRUE(batch)==FALSE) {

    sts <- spsites[spsites$SPECIESNAME %in% species,] #get site codes from natura2000 data

  }else{
    spx <- unique(unlist(xdf[, species]))

    sts <- spsites[spsites$SPECIESNAME %in% spx,]
  }

  #get the natura2000 polygons and points

  polygnat <- as.data.frame(nat_df[[1]])


  polysdata <- polygnat[polygnat$SITECODE%in%unlist(sts$SITECODE),]#polygon or points for the species

  xdf_sf <- xdf |> sf::st_as_sf(coords=c(lon, lat), crs = st_crs(4326))

  dfnat <- xdf_sf |> sf::st_join(sf::st_make_valid(polysdata |> st_as_sf()),
                                 join = st_intersects, left=TRUE)

  naVal <- is.na(dfnat$SITECODE)

  naTot <- length(naVal[which(naVal==TRUE)])

  if(naTot>0){

    if(isTRUE(discard)==TRUE){

      dffinal <- dfnat[!is.na(dfnat$SITECODE),]

      if(isTRUE(verbose)==TRUE) message('The ', naTot, ' records for ', species, ' are not found in NATURA2000 areas and they will be removed.')
    }else{

      dffinal <- dfnat
      if(isTRUE(verbose)==TRUE) message('The ', naTot, ' records for ', species, ' are not found in NATURA2000 areas but they are retained if discard is FALSE.')
    }

  }else{

    dffinal <- dfnat

    if(isTRUE(verbose)==TRUE) message('All records for ', species, ' are in known basins.')
  }

  return(dffinal)
}


#' @title Check whether species is on NATURA2000 list
#'
#' @param x Dataframe or vector of names.
#' @param quiet TRUE to hide implementation messages and \code{FALSE} to show messages. Default \code{FALSE}.
#' @param details TRUE to give species details such as the country where it is found or \code{FALSE} to whether the species is NATURA2000. Default \code{FALSE}.
#' @param citeshow Show the data citation or not. Default \code{TRUE}
#' @return species list
#' @export
#'
#' @examples
#'
#' \dontrun{
#'
#' salmo <- check_natura(x="Salmo trutta")
#'
#' }
check_natura <- function(x, quiet = TRUE, details = FALSE, citeshow=TRUE){

  if(is(x, 'atomic') || is(x, 'list') || is(x, 'data.frame')) stop("Only a string of species scientific name allowed.")

  naturalist <- specleanr::naturalist

  speciesnat <- unique(unlist(naturalist$SPECIESNAME))

  tf <- x%in%speciesnat

  if(tf==TRUE){

    if(isTRUE(details)){

      speciesname <- x

      ctries <- unique(naturalist$COUNTRY_CODE[which(naturalist$SPECIESNAME ==  speciesname)])

      group <-  unique(naturalist$SPGROUP [which(naturalist$SPECIESNAME ==  speciesname)])

      ptype <- unique(naturalist$POPULATION_TYPE [which(naturalist$SPECIESNAME ==  speciesname)])

      spdata <- list(speciesname = speciesname, countries = ctries, taxa = group, populationtype= ptype)

      if(isFALSE(quiet))message("The species ", x , " is found in NATURA2000 database.")

    }else{

      spdata <- x

      if(isFALSE(quiet))message("The species ", x , " is found in NATURA2000 database.")
    }
  }else{
    if(isFALSE(quiet))message(x,' does not exist in the NATURA2000 database or check the species spelling.')

    return(NULL)
  }

  if(isTRUE(citeshow))cat('Please visit https://www.eea.europa.eu/themes/biodiversity/natura-2000 for more information on NATURA2000 database.', '\n')

  return(spdata)
}











