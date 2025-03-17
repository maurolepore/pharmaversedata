#' Run the app
#'
#' @returns Called for its side effect.
#' @export
#'
#' @examplesIf interactive()
#' run_app()
run_app <- function() {
  data <- teal_data()
  data <- within(data, {
    reference <- pharmaversedata::pharmadverse[c("topic", "title", "package")]
  })

  app <- init(
    data = data,
    modules = tm_data_table("Reference", dt_args = list(escape = FALSE))
  ) |>
    modify_title("Pharmaverse data") |>
    modify_header(h3("Pharmaverse data"))

  blog <- "https://pharmaverse.github.io/blog/posts/2024-12-13_document_yo.../document_your_universe_with_dverse.html"
  app <- app |>
    modify_footer(
      tags$p("Made with love and the", tags$a(href = blog, "dverse"), "package")
    )

  shinyApp(app$ui, app$server)
}
