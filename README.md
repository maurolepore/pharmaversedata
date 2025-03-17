
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pharmaversedata

<!-- badges: start -->

[![R-CMD-check](https://github.com/maurolepore/pharmaversedata/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/maurolepore/pharmaversedata/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of pharmaversedata is to make it easy to access pharmaverse
data, metadata, and its documentation.

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

adam_datasets
#> # A tibble: 23 × 12
#>    dataset  label   key_variables class sub_class structure standard has_no_data
#>    <chr>    <chr>   <chr>         <chr> <lgl>     <chr>     <chr>    <chr>      
#>  1 ADAE     Advers… STUDYID, USU… OCCU… NA        One reco… ADaM-IG… No         
#>  2 ADBCVA_P Best C… STUDYID, USU… BASI… NA        One or m… ADaM-IG… No         
#>  3 ADCE_V   Clinic… <NA>          <NA>  NA        <NA>      ADaM-IG… No         
#>  4 ADCM     Concom… <NA>          <NA>  NA        <NA>      ADaM-IG… No         
#>  5 ADEG     Electr… STUDYID, USU… BASI… NA        One or m… ADaM-IG… No         
#>  6 ADEX     Exposu… STUDYID, USU… BASI… NA        One or m… ADaM-IG… No         
#>  7 ADFACE_V Findin… STUDYID, USU… BASI… NA        One or m… ADaM-IG… No         
#>  8 ADIS_V   Immuno… STUDYID, USU… BASI… NA        One or m… ADaM-IG… No         
#>  9 ADLB     Labora… STUDYID, USU… BASI… NA        One or m… ADaM-IG… No         
#> 10 ADLBHY   Analys… STUDYID, USU… BASI… NA        One or m… ADaM-IG… No         
#> # ℹ 13 more rows
#> # ℹ 4 more variables: repeating <chr>, reference_data <chr>, comment <lgl>,
#> #   developer_notes <lgl>

adam_variables
#> # A tibble: 1,878 × 21
#>    dataset label       variable order data_type length significant_digits format
#>    <chr>   <chr>       <chr>    <chr> <chr>     <chr>  <chr>              <chr> 
#>  1 ADAE    Study Iden… STUDYID  1     text      12     <NA>               <NA>  
#>  2 ADAE    Domain Abb… DOMAIN   2     text      2      <NA>               <NA>  
#>  3 ADAE    Unique Sub… USUBJID  3     text      11     <NA>               <NA>  
#>  4 ADAE    Sequence N… AESEQ    4     integer   8      <NA>               <NA>  
#>  5 ADAE    Sponsor-De… AESPID   5     text      3      <NA>               <NA>  
#>  6 ADAE    Reported T… AETERM   6     text      46     <NA>               <NA>  
#>  7 ADAE    Lowest Lev… AELLT    7     text      46     <NA>               <NA>  
#>  8 ADAE    Lowest Lev… AELLTCD  8     integer   8      <NA>               <NA>  
#>  9 ADAE    Dictionary… AEDECOD  9     text      46     <NA>               <NA>  
#> 10 ADAE    Preferred … AEPTCD   10    integer   8      <NA>               <NA>  
#> # ℹ 1,868 more rows
#> # ℹ 13 more variables: mandatory <chr>, assigned_value <lgl>, codelist <lgl>,
#> #   common <lgl>, origin <lgl>, source <lgl>, pages <lgl>, method <lgl>,
#> #   predecessor <lgl>, role <chr>, has_no_data <chr>, comment <lgl>,
#> #   developer_notes <lgl>

sdtm_datasets
#> # A tibble: 48 × 5
#>    name      label                            description          source author
#>    <chr>     <chr>                            <chr>                <chr>  <chr> 
#>  1 ae        Adverse Events                   An updated SDTM AE … https… Gopi …
#>  2 ae_ophtha Adverse Events for Ophthalmology An example Adverse … Const… <NA>  
#>  3 cm        Concomitant Medication           A SDTM CM dataset f… https… <NA>  
#>  4 dm        Demography                       A SDTM DM dataset f… https… <NA>  
#>  5 ds        Disposition                      An updated SDTM DS … https… Gopi …
#>  6 eg        Electrocardiogram                An example of stand… Gener… <NA>  
#>  7 ex        Exposure                         A SDTM EX dataset f… https… <NA>  
#>  8 ex_ophtha Exposure for Ophthalmology       An example Exposure… Const… <NA>  
#>  9 lb        Laboratory Measurements          An updated SDTM LB … https… Annie…
#> 10 mh        Medical History                  An updated SDTM MH … https… Annie…
#> # ℹ 38 more rows

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
