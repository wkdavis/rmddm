context("Functions")

test_that("crispdm_report function", {
  
    # don't run on cran because pandoc is required
    skip_on_cran()
  
    # don't run on appveyor because pandoc is required
    skip_on_appveyor()
    
    # work in a temp directory
    dir <- tempfile()
    dir.create(dir)
    oldwd <- setwd(dir)
    on.exit(setwd(oldwd), add = TRUE)
    
    # create a draft of the format
    testdocs <- "testdoc.Rmd"
    crispdm_report(file = testdocs)
    
    # render it
    output_file <- rmarkdown::render(testdocs)
    expect_true(file.exists(output_file))
    
    # create a draft of the format
    testdocs <- "testdoc_es.Rmd"
    crispdm_report(file = testdocs,language = "es")
    
    # render it
    output_file <- rmarkdown::render(testdocs)
    expect_true(file.exists(output_file))
})