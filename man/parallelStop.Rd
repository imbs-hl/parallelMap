% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parallelStop.R
\name{parallelStop}
\alias{parallelStop}
\title{Stops parallelization.}
\usage{
parallelStop()
}
\value{
Nothing.
}
\description{
Sets mode to \dQuote{local}, i.e., parallelization is turned
off and all necessary stuff is cleaned up.

For socket and mpi mode \code{\link[parallel]{stopCluster}} is called.

For BatchJobs mode the subdirectory of the \code{storagedir}
containing the exported objects is removed.

After a subsequent call of \code{\link{parallelStart}}, no exported objects
are present on the slaves and no libraries are loaded,
i.e., you have clean R sessions on the slaves.
}
