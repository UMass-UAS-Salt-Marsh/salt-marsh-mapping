% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_x.R
\name{add_x}
\alias{add_x}
\title{Add 'x' to 1st char of filenames that start with a digit}
\usage{
add_x(x, ignore = FALSE)
}
\arguments{
\item{x}{Vector of filenames}

\item{ignore}{If TRUE, don't do anything}
}
\value{
Filenames with 'x' prepended for those starting with a digit
}
\description{
This prevents downstream problems
}
\keyword{internal}
