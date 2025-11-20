# get dataframe from the large dataframe.

get dataframe from the large dataframe.

## Usage

``` r
getdiff(x, y, full = FALSE)
```

## Arguments

- x:

  Small dataset

- y:

  Large dataset for intersection

- full:

  Whether the whole column names are checked or not. Default `FALSE`
  where only the first column is considered. if FALSE; then the returned
  columns may be few or more if the considered column has less or more
  similar rows across the two data sets.

## Value

Data to extracted from large dataset.

## Examples

``` r
x = data.frame(id=c(1,2,3,4,5),  name=c('a','b','c', 'd','e'))

y=data.frame(id=c(1,2,3,4,7,6,5), tens=c(10,29,37,46,58, 34, 44),
                 name=c('a','b','c','d','e', 'f','g'))
```
