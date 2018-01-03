#' CRISP-DM Report
#'
#' Format for creating a CRISP-DM report. Adapted from \url{https://www.the-modeling-agency.com/crisp-dm.pdf}.
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyReport.Rmd", template = "crispdm_report", package = "rmddm", edit=FALSE)
#' }
#'
#' @export
crispdm_report <- function() {
  rmarkdown::draft("MyReport.Rmd", template = "crispdm_report", package = "rmddm", edit=FALSE,create_dir = FALSE)
}