.onLoad <- function(libname, pkgname) {
  Sys.setenv(DUCKDB_DISABLE_EXTENSIONS = "1")
}
