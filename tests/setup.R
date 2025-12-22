# Force single-threaded execution for unit tests
Sys.setenv(
  OMP_NUM_THREADS = "1",
  OMP_THREAD_LIMIT = "",
  KMP_DEVICE_THREAD_LIMIT = "",
  KMP_ALL_THREADS = "",
  KMP_TEAMS_THREAD_LIMIT = "",
  OPENBLAS_NUM_THREADS = "1",
  MKL_NUM_THREADS = "1",
  VECLIB_MAXIMUM_THREADS = "1"
)
