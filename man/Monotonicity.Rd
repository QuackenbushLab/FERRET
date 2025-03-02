% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FERRET.R
\name{Monotonicity}
\alias{Monotonicity}
\title{Given the values for axis X and axis Y, this function computes the monotonicity
of the ROC curve.}
\usage{
Monotonicity(x, y, absoluteMin = NULL, absoluteMax = NULL)
}
\arguments{
\item{x}{The value on the X axis}

\item{y}{The value on the Y axis}

\item{absoluteMin}{The absolute minimum value. If NULL, it is the minimum
value across both X and Y.}

\item{absoluteMax}{The absolute maximum value. If NULL, it is the maximum
value across both X and Y.}
}
\value{
The monotonicity
}
\description{
Given the values for axis X and axis Y, this function computes the monotonicity
of the ROC curve.
}
