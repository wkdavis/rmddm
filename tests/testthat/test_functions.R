context("Functions")

test_that("crispdm_report function", {
    
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
})