# class04
Vanesa Fernandez

``` r
#My first Rscript
x <- 1:50
plot(x)
```

![](class04_files/figure-commonmark/unnamed-chunk-1-1.png)

``` r
plot(x, sin(x), type = "l", col="blue")
```

![](class04_files/figure-commonmark/unnamed-chunk-2-1.png)

``` r
plot(x=x, y=sin(x), type = "l", col="red", typ="l", lwd=3)
```

    Warning in plot.window(...): "typ" is not a graphical parameter

    Warning in axis(side = side, at = at, labels = labels, ...): "typ" is not a
    graphical parameter
    Warning in axis(side = side, at = at, labels = labels, ...): "typ" is not a
    graphical parameter

    Warning in box(...): "typ" is not a graphical parameter

    Warning in title(...): "typ" is not a graphical parameter

![](class04_files/figure-commonmark/unnamed-chunk-3-1.png)

``` r
log(10,base=2)
```

    [1] 3.321928
