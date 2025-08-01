% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/do_gather.R
\name{do_gather}
\alias{do_gather}
\title{Collect raster data for each site}
\usage{
do_gather(site, pattern = "", update = TRUE, check = FALSE, field = FALSE)
}
\arguments{
\item{site}{site, using 3 letter abbreviation}

\item{pattern}{Regex filtering rasters, case-insensitive. Default = "" (match all). Note: only
files ending in \code{.tif} are included in any case.
Examples:
\itemize{
\item to match all Mica orthophotos, use \code{mica_orth}
\item to match all Mica files from July, use \code{Jun.*mica}
\item to match Mica files for a series of dates, use \verb{11nov20.*mica|14oct20.*mica}
}}

\item{update}{If TRUE, only process new files, assuming existing files are good; otherwise,
process all files and replace existing ones.}

\item{check}{If TRUE, just check to see that source directories and files exist, but don't
cache or process anything}

\item{field}{If TRUE, download and process the field transects if they don't already exist.
The shapefile is downloaded for reference, and a raster corresponding to \code{standard} is created.}
}
\description{
Clip to site boundary, resample and align to standard resolution. This is an internal function,
called by gather.
}
\details{
\emph{\strong{Hanging issues for SFTP}}
\itemize{
\item SFTP implementations behave differently so I'll have to revise once the NAS is up and running.
\item Windows dates are a mess for DST. Hopefully Linux won't be.
}

\strong{When running on Unity}, request 20 GB. It's been using just under 16 GB, and will fail quietly
at the default of 8 GB.
}
