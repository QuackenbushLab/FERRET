% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FERRET.R
\name{ComputeRobustnessAUC}
\alias{ComputeRobustnessAUC}
\title{This function computes the AUC score for a given similarity index, where the
X axis is the index computed for the out-group and the Y axis is the index
computed on the in-group. Rather than the scores being between 0 and 1, we
set the minimum to be the minimum similarity across both in-group and out-group.
This is because all regulatory networks are expected to have some degree of
overlap including but not limited to basic cellular function.}
\usage{
ComputeRobustnessAUC(
  results,
  comparisons,
  metric = c("jaccard", "in-degree", "out-degree"),
  numberOfCutoffs = 10,
  plotCurve = TRUE,
  xlab = "",
  ylab = "",
  mode = "Score"
)
}
\arguments{
\item{results}{An object of type FERRET_Results}

\item{comparisons}{An object of type FERRET_Comparisons. Note that the 
in-group and out-group names in FERRET_Comparisons MUST match the names
in FERRET_Results.}

\item{metric}{The metric to use for computing similarity. One or more elements
in the following list:
- jaccard: Computes the Jaccard similarity (intersection / union) of edges.
- in-degree: Computes the overlap in in-degree of each node.
- out-degree: Compute the overlap in out-degree of each node.}

\item{numberOfCutoffs}{The number of cutoffs to include in the AUC/ROC curve.
These are determined using the range of values over all networks.}

\item{plotCurve}{Whether or not to generate a plot. Default is TRUE.}

\item{xlab}{The label for the X axis of the plot. Default is empty. This only
needs to be set when generating the plot.}

\item{ylab}{The label for the Y axis of the plot. Default is empty. This only
needs to be set when generating the plot.}

\item{mode}{"Percentile" or "Score".}
}
\value{
An object of type FERRET_ROC_AUC, also generates a  plot as a side effect.
}
\description{
This function computes the AUC score for a given similarity index, where the
X axis is the index computed for the out-group and the Y axis is the index
computed on the in-group. Rather than the scores being between 0 and 1, we
set the minimum to be the minimum similarity across both in-group and out-group.
This is because all regulatory networks are expected to have some degree of
overlap including but not limited to basic cellular function.
}
