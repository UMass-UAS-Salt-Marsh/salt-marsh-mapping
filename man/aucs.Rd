% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aucs.R
\name{aucs}
\alias{aucs}
\title{Return multi-class AUC (Area Under the Curve) for ranger models from caret}
\usage{
aucs(fit, sort = TRUE)
}
\arguments{
\item{fit}{Model fit from \code{train}}

\item{sort}{If TRUE, sort classes by trailing number}
}
\value{
A vector with the AUC for each class
}
\description{
To use this, you must do the following when training the model:
\itemize{
\item Class names must be valid R variables, so not 1, 2, 3, ... They must still
be factors.
\item You'll need to supply the \code{trControl} option to train with the following:
\verb{control <- trainControl(} \cr
\verb{   allowParallel = TRUE,} \cr
\verb{   method = 'cv',} \cr
\verb{   number = 5,} \cr
\verb{   classProbs = TRUE,} \cr
\code{   savePredictions = 'final'} \cr
\verb{)}
}

If class levels all end in numbers (e.g., \code{class1}, \code{class}, \code{class3}), the
result will be sorted by the numbers so you won't get crap like \code{class1},
\code{class10}, \code{class100}.
}
