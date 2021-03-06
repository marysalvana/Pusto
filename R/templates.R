#' @title Open an APA-6 style .Rnw template
#'
#' @description
#' Creates and opens an .Rnw file containing a template for writing a manuscript in APA-6 style.
#'
#' @param filename Name of file to create.
#' @param ... Further arguments passed to file.copy
#'
#' @export
#'
#' @examples
#' \dontrun{
#' Rnw_APA6("Awesome-New-Paper")
#' }
#' 


Rnw_APA6 <- function(filename, ...) {
  from <- system.file("templates","APA6.Rnw",package="Pusto")
  to <- paste0(gsub(" ","-",filename),".Rnw")
  copy <- file.copy(from, to, ...)

  return(utils::file.edit(to))
}


#' @title Open a simulation skeleton
#'
#' @description
#' Creates and opens an .R file containing a skeleton for writing a Monte Carlo simulation study.
#'
#' @param filename Name of file to create.
#' @param ... Further arguments passed to file.copy
#'
#' @export
#'
#' @examples
#' \dontrun{
#' Simulation_Skeleton("Behrens-Fisher problem")
#' }

Simulation_Skeleton <- function(filename, ...) {
  from <- system.file("templates","Simulation-Skeleton.R",package="Pusto")
  to <- paste0(filename,".R")
  copy <- file.copy(from, to, ...)
  return(utils::file.edit(to))
}


