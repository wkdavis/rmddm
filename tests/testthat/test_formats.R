context("Formats")

test_format <- function(name,os_skip = NULL) {
  
  test_that(paste(name, "format"), {
    
    # don't run on cran because pandoc is required
    skip_on_cran()
    
    # skip on os if requested
    if (!is.null(os_skip))
      skip_on_os(os_skip)
    
    # work in a temp directory
    dir <- tempfile()
    dir.create(dir)
    oldwd <- setwd(dir)
    on.exit(setwd(oldwd), add = TRUE)
    
    # create a draft of the format
    testdocs <- "testdoc.Rmd"
    rmarkdown::draft(testdocs,
                     system.file("rmarkdown", "templates", name,
                                 package = "rmddm"),
                     create_dir = FALSE,
                     edit = FALSE)
    
    # render it
    output_file <- rmarkdown::render(testdocs)
    expect_true(file.exists(output_file))
  })
}

test_format("crispdm_report")
