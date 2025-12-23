---
title: "CRAN comments"
---
## Resubmission 

This is a resubmission following CRAN's feedback dated [23/12/2025].

This is an update after the earlier CRAN releases, ver 1.0.0 and now 1.0.1. 
The package was removed from CRAN on December 12, 2025, due to two errors on 
the r-devel-linux-x86_64-fedora-clang platform. These included OMP threads and 
duckdb errors, all from the vignettes during package testing. 
I have accordingly addressed them in the following ways.

### 1. OpenMP and number of thread errors.

OMP: Warning #96: Cannot form a team with 24 threads, using 2 instead.
OMP: Hint Consider unsetting KMP_DEVICE_THREAD_LIMIT (KMP_ALL_THREADS), KMP_TEAMS_THREAD_LIMIT, and OMP_THREAD_LIMIT (if any are set).
[gannet:3215232:0:3215232] Caught signal 11 (Segmentation fault: Sent by the kernel at address (nil))

- This error emanated from the isolation.forest function from the isotree package that sets nthreads = parallel::detectCores().
I solved it by setting the number of threads to 1, which prevents the indiscriminate allocation of threads based on detectCores(), a default setting made by the isotree package developer.

### 2. duckdb errors

! error in evaluating the argument 'conn' in selecting a method for function 'dbGetQuery': Invalid Error: Invalid Input Error:

I solved it by incorporating the test dataset with the package and commented out the getdata function from vignettes 
that instates the errors on the platform. The getdata function is based on rgbif, rinat, and rvertnet. During that download, 
the data providers' access to DuckDB, but possibly the settings used are not compliant with the Linux platform,
which raised the errors.

## Minor chnages

Minor chnages were also implemented including 
- Upgrading RoxygenNote: 7.3.3 from RoxygenNote: 7.3.2

## Reverse dependencies 

No reverse dependencies 

## R CMD check results
0 errors ✔ | 0 warnings ✔ | 0 notes ✔

* This is a resubmission.
