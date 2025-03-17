library(pharmaversesdtm)
library(pharmaverseadam)

universe <- c("pharmaversesdtm", "pharmaverseadam")
template <- "https://pharmaverse.github.io/{package}/reference/{topic}.html"
pharmadverse <- dverse::document_universe(universe, template)

usethis::use_data(pharmadverse, overwrite = TRUE)

path <- system.file("extdata/adams-specs.xlsx", package = "pharmaverseadam")
specs <- list(
  define = readxl::read_xlsx(path, "Define") |> janitor::clean_names(),
  datasets = readxl::read_xlsx(path, "Datasets") |> janitor::clean_names(),
  variables = readxl::read_xlsx(path, "Variables") |> janitor::clean_names()
)

usethis::use_data(specs, overwrite = TRUE)
