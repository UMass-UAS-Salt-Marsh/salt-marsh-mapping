% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/do_map.R
\name{do_map}
\alias{do_map}
\title{Build a map of geoTIFF of predictions for specified model fit}
\usage{
do_map(
  fit,
  clip = NULL,
  sourcedir = the$flightsdir,
  result = NULL,
  cores = 1,
  runinfo = NULL
)
}
\arguments{
\item{fit}{Model fit object}

\item{clip}{Optional clip, vector of \code{xmin}, \code{xmax}, \code{ymin}, \code{ymax}}

\item{sourcedir}{Source directory, probably the flights directory}

\item{result}{Result path and filename, sans extension}

\item{cores}{Number of CPU cores to use}

\item{runinfo}{Path and filename of run info file. When the run finishes, run info
is written to this file.}
}
\description{
This function may be run at the console, but it's typically spun off as a batch job on Unity by \code{map}.
}
\details{
Side effects:
\enumerate{
\item writes a geoTIFF, \verb{<result>.tif} with, and a run info file
\item \verb{<runinfo>.RDS}, with the following:
\enumerate{
\item Time taken for the run (s)
\item Maximum memory used (GB)
\item Raster size (M pixel)
\item R error, or NULL for success
}
}

Requires \code{rasterPrep}. Install it with:
\code{remotes::install_github('ethanplunkett/rasterPrep')}
}
