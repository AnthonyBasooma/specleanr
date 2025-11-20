# To package both principal component analysis and bootstrapping.

To package both principal component analysis and bootstrapping.

## Usage

``` r
pcboot(pb, var, pc, boot, pcvar)
```

## Arguments

- pb:

  the principal component or bootstrapped data

- var:

  The variable of concern, which is vital for univariate outlier
  detection methods

- pc:

  Whether principal component analysis will be computed. Default `FALSE`

- boot:

  Whether bootstrapping will be computed. Default `FALSE`

- pcvar:

  Principal component analysis to e used for outlier detection after
  PCA. Default `PC1`
