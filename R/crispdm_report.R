#' CRISP-DM Report
#'
#' Format for creating a CRISP-DM report. Adapted from \url{https://www.the-modeling-agency.com/crisp-dm.pdf}.
#' 
#' @inheritParams rmarkdown::draft
#'
#' @return R Markdown output format to pass to [render][rmarkdown::render]
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' crispdm_report(name = "MyReport.Rmd",edit=TRUE,create_dir = FALSE)
#' }
#' 
#' @seealso [draft][rmarkdown::draft], [render][rmarkdown::render]
#'
#' @export
crispdm_report <- function(file,edit = FALSE, create_dir = FALSE) {
  rmarkdown::draft(file, system.file("rmarkdown", "templates", "crispdm_report",package = "rmddm"), edit=edit,create_dir = create_dir)
}