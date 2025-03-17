
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pharmaversedata

<!-- badges: start -->

[![R-CMD-check](https://github.com/maurolepore/pharmaversedata/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/maurolepore/pharmaversedata/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of pharmaversedata is to make it easy to access pharmaverse
data and its documentation.

## Installation

You can install the development version of pharmaversedata from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("maurolepore/pharmaversedata")
```

## Example

``` r
library(tibble)
library(pharmaversedata)
#> Loading required package: pharmaverseadam
#> Loading required package: pharmaversesdtm

specs$define
#> # A tibble: 9 × 2
#>   attribute        value                                                        
#>   <chr>            <chr>                                                        
#> 1 StudyName        <NA>                                                         
#> 2 StudyDescription <NA>                                                         
#> 3 ProtocolName     <NA>                                                         
#> 4 StandardName     ADaM-IG                                                      
#> 5 StandardVersion  1.1                                                          
#> 6 Language         en                                                           
#> 7 <NA>             <NA>                                                         
#> 8 Legend           Highlighted cells are required for Define-XML 2.1 and can be…
#> 9 <NA>             Highlighted cells are used by ADaM only and can be left empt…

specs$datasets
#> # A tibble: 23 × 12
#>    dataset  label   class sub_class structure key_variables standard has_no_data
#>    <chr>    <chr>   <chr> <lgl>     <chr>     <chr>         <chr>    <chr>      
#>  1 ADAE     Advers… OCCU… NA        One reco… STUDYID, USU… ADaM-IG… No         
#>  2 ADBCVA_P Best C… BASI… NA        One or m… STUDYID, USU… ADaM-IG… No         
#>  3 ADCE_V   Clinic… <NA>  NA        <NA>      <NA>          ADaM-IG… No         
#>  4 ADCM     Concom… <NA>  NA        <NA>      <NA>          ADaM-IG… No         
#>  5 ADEG     Electr… BASI… NA        One or m… STUDYID, USU… ADaM-IG… No         
#>  6 ADEX     Exposu… BASI… NA        One or m… STUDYID, USU… ADaM-IG… No         
#>  7 ADFACE_V Findin… BASI… NA        One or m… STUDYID, USU… ADaM-IG… No         
#>  8 ADIS_V   Immuno… BASI… NA        One or m… STUDYID, USU… ADaM-IG… No         
#>  9 ADLB     Labora… BASI… NA        One or m… STUDYID, USU… ADaM-IG… No         
#> 10 ADLBHY   Analys… BASI… NA        One or m… STUDYID, USU… ADaM-IG… No         
#> # ℹ 13 more rows
#> # ℹ 4 more variables: repeating <chr>, reference_data <chr>, comment <lgl>,
#> #   developer_notes <lgl>

specs$variables
#> # A tibble: 1,878 × 21
#>    order dataset variable label       data_type length significant_digits format
#>    <chr> <chr>   <chr>    <chr>       <chr>     <chr>  <chr>              <chr> 
#>  1 1     ADAE    STUDYID  Study Iden… text      12     <NA>               <NA>  
#>  2 2     ADAE    DOMAIN   Domain Abb… text      2      <NA>               <NA>  
#>  3 3     ADAE    USUBJID  Unique Sub… text      11     <NA>               <NA>  
#>  4 4     ADAE    AESEQ    Sequence N… integer   8      <NA>               <NA>  
#>  5 5     ADAE    AESPID   Sponsor-De… text      3      <NA>               <NA>  
#>  6 6     ADAE    AETERM   Reported T… text      46     <NA>               <NA>  
#>  7 7     ADAE    AELLT    Lowest Lev… text      46     <NA>               <NA>  
#>  8 8     ADAE    AELLTCD  Lowest Lev… integer   8      <NA>               <NA>  
#>  9 9     ADAE    AEDECOD  Dictionary… text      46     <NA>               <NA>  
#> 10 10    ADAE    AEPTCD   Preferred … integer   8      <NA>               <NA>  
#> # ℹ 1,868 more rows
#> # ℹ 13 more variables: mandatory <chr>, assigned_value <lgl>, codelist <lgl>,
#> #   common <lgl>, origin <lgl>, source <lgl>, pages <lgl>, method <lgl>,
#> #   predecessor <lgl>, role <chr>, has_no_data <chr>, comment <lgl>,
#> #   developer_notes <lgl>

knitr::kable(head(pharmadverse))
```

| topic | alias | title | concept | type | keyword | package |
|:---|:---|:---|:---|:---|:---|:---|
| <a href=https://pharmaverse.github.io/pharmaverseadam/reference/adae.html>adae</a> | adae | adae | Datasets available by data() | help | datasets | pharmaverseadam |
| <a href=https://pharmaverse.github.io/pharmaverseadam/reference/adbcva_ophtha.html>adbcva_ophtha</a> | adbcva_ophtha | adbcva_ophtha | Datasets available by data() | help | datasets | pharmaverseadam |
| <a href=https://pharmaverse.github.io/pharmaverseadam/reference/adce_vaccine.html>adce_vaccine</a> | adce_vaccine | adce_vaccine | Datasets available by data() | help | datasets | pharmaverseadam |
| <a href=https://pharmaverse.github.io/pharmaverseadam/reference/adcm.html>adcm</a> | adcm | adcm | Datasets available by data() | help | datasets | pharmaverseadam |
| <a href=https://pharmaverse.github.io/pharmaverseadam/reference/adeg.html>adeg</a> | adeg | adeg | Datasets available by data() | help | datasets | pharmaverseadam |
| <a href=https://pharmaverse.github.io/pharmaverseadam/reference/adex.html>adex</a> | adex | adex | Datasets available by data() | help | datasets | pharmaverseadam |
