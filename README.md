# Installation Using devtools/remotes

```r
devtools::install_github("QuackenbushLab/FERRET")
library(FERRET)
```
You can use `remotes` instead of `devtools` because it is faster to install and run. The syntax is the following:

```r
remotes::install_github("QuackenbushLab/FERRET")
library(FERRET)
```

# Downloading Data

Run ```DownloadFERRETData()``` with the following parameters:
   -  **datasetName:** Dataset name (CPTAC_RCC or CPTAC_GBM)
   -  **destinationDir:** Destination directory on your machine

# Evaluating Results

After running your GRN method on the data, evaluate performance using the following steps:
1. Run ```LoadResults()``` with the following parameters:
   -  **resultDirectory:** Result directory
   -  **interpretationOfNegative:** Interpretation of negatives ("poor" means low regulation confidence and "inhibitory" means the negative value represents an inhibitory regulation)
   -  **firstColumnIsRowname:** Whether or not the first column is the row name (TRUE/FALSE)
   -  **isTabDelimited:** Whether or not the file is tab-delimited (TRUE/FALSE)
2. Run ```BuildComparisonObject()``` with the following parameters:
   -  **sourceNetwork:** The path to the file with the source network
   -  **ingroupToCompare:** A list of file paths to use for the in-group comparison
   -  **outgroupToCompare:** A list of file paths to use for the out-group comparison
   -  **results:** Your *FERRET_Results* object generated using ```LoadResults()```
3. Run ```ComputeRobustnessAUC()``` to obtain AUC and monotonicity scores and plot them. Include the following parameters:
   -  **results:** Your *FERRET_Results* object generated using ```LoadResults()```
   -  **comparisons:** Your *FERRET_Comparisons* object generated using ```BuildComparisonObject()```
   -  **metric:** The metric to use for computing similarity (either *jaccard*, *in-degree*, or *out-degree*)
   -  **numberOfCutoffs:** The number of cutoffs to include in the curve (default 10)
   -  **xlab:** The label to use on the X axis of the curve
   -  **ylab:** The label to use on the Y axis of the curve
   -  **mode:** Either *percentile* if you want to compare edge weights by percentile or *score* if you want to compare raw scores. Default is *score*.
4. To write the results, run ```WriteRobustnessAUC()``` with the following parameters:
   -  **results:** The *FERRET_ROC_AUC* object returned by ```ComputeRobustnessAUC()```
   -  **fileName:** The name of the file where you wish to save the results
5. If you want to compare multiple GRN inference methods and plot them:
    1.  Follow step 3 for each relevant method / cell type / sample.
    2.  Run ```ConsolidateRobustness()``` on the list of *FERRET_Results* objects obtained to plot the overall robustness curves.
    3.  Run ```GetResultRanges()``` on the list of *FERRET_Results* objects obtained.
    4.  Row-bind the results returned by ```GetResultRanges()```.
    5.  Run ```MakePerformanceBarPlot()``` on the result from step iv.
