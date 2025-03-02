% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FERRET.R
\name{ObtainNetworkCutoffs}
\alias{ObtainNetworkCutoffs}
\title{This function obtains the cutoffs to use in computing the AUC scores.}
\usage{
ObtainNetworkCutoffs(results, numberOfCutoffs)
}
\arguments{
\item{results}{Object of type FERRET_Results}

\item{numberOfCutoffs}{The number of points to include in calculating the AUC score.}
}
\value{
A vector of cutoffs
}
\description{
This function obtains the cutoffs to use in computing the AUC scores.
}
