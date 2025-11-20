# Catch errors during methods implementation.

Catch errors during methods implementation.

## Usage

``` r
handle_true_errors(
  func,
  fname = NULL,
  spname = NULL,
  verbose = FALSE,
  warn = FALSE,
  silence_true_errors = TRUE
)
```

## Arguments

- func:

  Outlier detection function

- fname:

  function name for messaging or warning identification.

- spname:

  species name being handled

- verbose:

  whether to return messages or not. Default `FALSE`.

- warn:

  whether to return warning or not. Default TRUE.

- silence_true_errors:

  show execution errors and therefore for multiple species the code will
  break if one of the methods fails to execute.

## Value

Handle errors
