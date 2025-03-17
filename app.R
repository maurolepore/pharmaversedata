# shinyApp
options(list(shiny.port = 8080L, shiny.host = "0.0.0.0"))
pkgload::load_all()
pharmaversedata::run_app()
