library(dplyr)
library(tibble)
library(readxl)
library(dverse)
library(janitor)
library(usethis)
library(pharmaversesdtm)
library(pharmaverseadam)

standardize <- function(data) {
  data |>
    janitor::clean_names() |>
    relocate(
      matches("dataset|name"),
      matches("label"),
      matches("variable")
    ) |>
    tibble::as_tibble()
}

universe <- c("pharmaversesdtm", "pharmaverseadam")
template <- "https://pharmaverse.github.io/{package}/reference/{topic}.html"
pharmadverse <- dverse::document_universe(universe, template)
usethis::use_data(pharmadverse, overwrite = TRUE)

xlsx <- system.file("extdata", "adams-specs.xlsx", package = "pharmaverseadam")
adam_datasets <- readxl::read_xlsx(xlsx, "Datasets") |> standardize()
usethis::use_data(adam_datasets, overwrite = TRUE)

adam_variables <- readxl::read_xlsx(xlsx, "Variables") |> standardize()
usethis::use_data(adam_variables, overwrite = TRUE)

json <- system.file("extdata", "sdtms-specs.json", package = "pharmaversesdtm")
sdtm_datasets <- tibble::tibble(jsonlite::fromJSON(json)[[1]]) |> standardize()
usethis::use_data(sdtm_datasets, overwrite = TRUE)
