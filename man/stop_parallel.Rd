% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parallel-setup.R
\name{stop_parallel}
\alias{stop_parallel}
\title{Shut down worker nodes on a cluster}
\usage{
stop_parallel(cluster = NULL)
}
\arguments{
\item{cluster}{object of class \code{"cluster"}.}
}
\description{
Explicitly shut down the worker nodes in a cluster created by \code{start_parallel}
}
\examples{
\dontrun{
cluster <- start_parallel()
stop_parallel(cluster)
}



}
