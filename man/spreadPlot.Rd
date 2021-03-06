% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/spreadPlot.R
\name{spreadPlot}
\alias{spreadPlot}
\title{Box plot for visualization of the skill of an ensemble forecast prediction}
\usage{
spreadPlot(mm.obj, obs, year.target, boxplot = TRUE, violin = FALSE,
  add.points = FALSE, pch = NULL, stationId = NULL)
}
\arguments{
\item{mm.obj}{A multi-member object with predictions, either a field or a multi-member station object as a result of
downscaling of a forecast using station data. See details.}

\item{obs}{The benchmarking observations for forecast verification}

\item{year.target}{Year selected to plot the probability of the tercile in bars}

\item{boxplot}{Logical flag indicating whether a boxplot should be added to the graph. Default is TRUE}

\item{violin}{Logical flag indicating whether a violin plot should be added to the graph instead of the boxplot.
Default is FALSE}

\item{add.points}{Logical flag indicating whether crosses indicating the ensemble members should be added to the
graph. Default is FALSE.}

\item{pch}{Single character or an integer code for one of the set of R graphics symbols. Cross is the default symbol.
Only consider if add.points is TRUE.}

\item{stationId}{In case of multi-member multi-station objects, one station can be selected to plot
 the diagram. Otherwise ignored.}
}
\description{
Box plot for the visualization of the skill of an ensemble forecast prediction.
}
\details{
For each member, the daily predictions are averaged to obtain a single seasonal forecast. For
rectangular spatial domains (i.e., for fields), the spatial average is first computed (with a warning) to obtain a
unique series for the whole domain. The climatology for the forecast period is computed. The shaded areas show
the central tercile (dark shade) and the maximum and minimum (light shade). To avoid overinterpretation of daily
peaks, the daily data has been smoothed by means of a (centered) moving average of 31 days. Therefore, at the
location of the boxplots, the background shows the monthly mean forecast (the terciles and extremes being computed
over members and years). Monthly means are calculated for each ensemble member. This information is included to the
graph in a boxplot or a violin plot (to unveil multimodalities in the data) or/and the values of the ensemble members.

In case of multi-member fields, the field is spatially averaged to obtain one single time series
for each member prior to data analysis, with a warning. In case of multimember stations, one single station
can be selected through the \code{stationId} argument, otherwise all station series are also averaged.
}
\note{
The computation of climatological terciles requires a representative period to obtain meaningful results.
}
\author{
M.D. Frias, J. Fernandez and J. Bedia \email{joaquin.bedia@gmail.com}
}
\seealso{
Other visualization: \code{\link{bubblePlot}};
  \code{\link{tercileBarplot}}; \code{\link{tercilePlot}}
}

