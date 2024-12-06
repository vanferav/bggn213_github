# Class 06: Functions
Vanesa Fernandez (PID: A59026769)

The first function we write

``` r
 add <- function(x,y){ x +y
}
```

Can we use it?

``` r
add(1,1)
```

    [1] 2

``` r
add(x=1,y=100)
```

    [1] 101

``` r
add(c(100,1,100),1)
```

    [1] 101   2 101

If you wanna define a default value, such as y=1, then we can omit the y
value on the function.

``` r
add2 <- function(x,y=1){ x +y
}
```

``` r
add2(10)
```

    [1] 11

\#A second function Q1. Make a function “generate_DNA()” that makes a
random nucleotides seq of any lenght

``` r
bases <- c("A","C","G","T")
sample(bases, size = 50, replace=TRUE)
```

     [1] "C" "A" "T" "A" "T" "G" "G" "C" "G" "A" "C" "C" "C" "T" "C" "G" "T" "C" "T"
    [20] "G" "G" "C" "G" "A" "A" "T" "G" "G" "T" "C" "T" "T" "C" "A" "G" "C" "A" "A"
    [39] "A" "G" "A" "T" "C" "T" "C" "G" "G" "C" "G" "T"

The last one is out wee working snipet. Now let’s try make it into a
function.

``` r
generate_DNA <- function(length){
bases <- c("A","C","G","T")
sequence <- sample(bases, size = length,
         replace=TRUE)
  return(sequence)
}
```

``` r
generate_DNA(10)
```

     [1] "C" "C" "A" "A" "G" "A" "C" "C" "A" "T"

After installing the package bio3d, we can access the table of aa

``` r
bio3d::aa.table$aa1
```

     [1] "A" "R" "N" "D" "C" "Q" "E" "G" "H" "I" "L" "K" "M" "F" "P" "S" "T" "W" "Y"
    [20] "V" "X" "D" "R" "C" "C" "C" "C" "C" "C" "C" "C" "H" "E" "H" "H" "H" "H" "H"
    [39] "H" "D" "K" "K" "M" "K" "M" "C" "F" "Y" "S" "T"

To make it unique:

``` r
 aa <- unique(bio3d::aa.table$aa1)[1:20]
aa
```

     [1] "A" "R" "N" "D" "C" "Q" "E" "G" "H" "I" "L" "K" "M" "F" "P" "S" "T" "W" "Y"
    [20] "V"

Then we can write a function that generates proteins

``` r
generate_protein <- function(length){ aa
  aachain <- sample(aa, size = length,
         replace=TRUE)
  aachain <- paste(aachain, collapse="") #we added the paste function in order
  return(aachain)
  }
```

``` r
generate_protein(10)
```

    [1] "KLANGCVVTY"

Q. Generate random protein sequences of length 6 to 13.

``` r
generate_protein(6)
```

    [1] "PIEAYN"

``` r
generate_protein(7)
```

    [1] "APCQIIW"

``` r
generate_protein(8)
```

    [1] "RVRSYQEE"

``` r
generate_protein(9)
```

    [1] "CLHFSPSIE"

``` r
generate_protein(10)
```

    [1] "WSNHSYLYNM"

``` r
generate_protein(11)
```

    [1] "LNYFTNWVKSR"

``` r
generate_protein(12)
```

    [1] "RIAFWQYYTACD"

``` r
generate_protein(13)
```

    [1] "WSDSMYKQFVNEY"

Then to write it shorter

``` r
 for (x in 6:13) print(generate_protein(x))
```

    [1] "LNLLNF"
    [1] "GDEFISW"
    [1] "ATRSQMWM"
    [1] "RYEKWHFSF"
    [1] "HVPGYYEMMT"
    [1] "DVHDRANEHTT"
    [1] "GGGRLVPRMSYP"
    [1] "ELFGIKWECKVAM"

In class strategy:

``` r
 X <- c(6:13)
answer <- sapply(X, generate_protein)
```

To get the fasta format, we can just add the headed to each sequence
that we generated.

``` r
cat( paste(">id.",6:13, "\n", answer, sep=""), sep="\n")
```

    >id.6
    RFVRKD
    >id.7
    DPRSEVI
    >id.8
    VIYIHVTV
    >id.9
    IWCCNPYTN
    >id.10
    GMDANCGVAG
    >id.11
    FMAYTLMKKEF
    >id.12
    DPCRQECVEAIE
    >id.13
    CEYNHPMLYNLWE

Functions: Sintax

``` r
name_of_function <- function (input1, input2)
{
  #Function Body 
  output <- input1 + input2
  
  return (output) ## not necessarily needed it
}
```
