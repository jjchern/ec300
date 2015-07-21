#' Get datasets from Mastering 'Metrics
#'
#' @param data A string specifying the name of a Mastering 'Metrics dataset.
#' @param envir An environment in which to store the object. Default is the parent environment.
#' @return A dataset.
#' @examples
#' getmm("mlda")
#' @import rio
#' @export
getmm = function(data, envir = parent.frame()) {
  if(data == "mlda"){
    dat = rio::import("http://masteringmetrics.com/wp-content/uploads/2015/01/AEJfigs.dta")
    assign(data, dat, envir = envir)
    invisible(dat)
  }

  info = paste0("All done. Try: View(", data, ").")
  message(info)
}