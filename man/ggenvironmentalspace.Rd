% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggenvironmentalspace.R
\name{ggenvironmentalspace}
\alias{ggenvironmentalspace}
\title{Title Plotting to show the quality controlled data in environmental space.}
\usage{
ggenvironmentalspace(
  qcdata,
  xvar = NULL,
  yvar = NULL,
  zvar = NULL,
  labelvar = NULL,
  type = "2D",
  xlab = NULL,
  ylab = NULL,
  zlab = NULL,
  ncol = 2,
  nrow = 2,
  scalecolor = "viridis",
  colorvalues = "auto",
  legend_position = "right",
  legend_inside = NULL,
  pointsize = 1,
  themebackground = "bw",
  fontsize = 13,
  legtitle = "blank",
  ggxangle = 1,
  xhjust = 0.5,
  xvjust = 1,
  main = NULL,
  pch = "auto",
  lpos3d = "left",
  cexsym = NULL
)
}
\arguments{
\item{qcdata}{\code{dataframe} Data output from quality controlled function \code{\link{extract_clean_data}} and \code{\link{classify_data}}.}

\item{xvar}{\code{string} The variable to be on the x-axis.}

\item{yvar}{\code{string} The variable to be on the y-axis.}

\item{zvar}{\code{string} The variable to be on the z-axis only if the 3D plot type is selected..}

\item{labelvar}{\code{string} Column name in the quality controlled data that has the labels. This applies is the 3D plot is selected.}

\item{type}{\code{string} Its \code{1D}, \code{2D} for a two dimensional ggplot2 graph or \code{3D} for a 3-dimensional graph for multivariate data.}

\item{xlab, ylab, zlab}{\code{string} x-axis, y-axis, and z-axis label.}

\item{ncol, nrow}{\code{integer} If number of groups are greater than 1, then number of rows and columns can be set.
Check ggplot2 facet parameters on how the columns are set.}

\item{scalecolor}{\code{string} The scale color themes supported are grey, manual, viridis. If \code{manual} is selected, then the
\code{colorvalues} should be provided for the different colors for each data label.}

\item{colorvalues}{If \code{manual} is selected, then the
\code{colorvalues} should be provided for the different colors for each data label. If 3D is selected and \code{colorvalues} is not
\code{auto}, then colors should determined.}

\item{legend_position}{\code{string} Its either \code{bottom}, \code{top} or \code{inside}. If the \code{inside} is selected then the vector
with graph coordinates should be provided to avoid the legend overlap with the graph contents.}

\item{legend_inside}{\code{vector} If the \code{inside} for legend position is selected then the vector
with graph coordinates should be provided to avoid the legend overlap with the graph contents.}

\item{pointsize}{\code{decimal} The size of the points.}

\item{themebackground}{\code{string} Either \code{classic}, \code{bw} or \code{gray} to set the plot theme. This is based on ggplot2.}

\item{fontsize}{\code{integer} Indicates the sizes of fonts for the whole graph.}

\item{legtitle}{\code{string} Either \code{blank} or \code{TRUE} to set the legend title for the 2D plot.}

\item{ggxangle}{\code{integer} Indicates the angle of the x-axis text. The dafualt is 45 but depend on the data.}

\item{xhjust}{\code{numeric} Indicates the distance of the x-axis text from the x-axis line in a vertical direction.}

\item{xvjust}{\code{numeric} Indicates the distance of the x-axis text from the x-axis line in a horizontal direction.}

\item{main}{\code{string} Plot title}

\item{pch}{\code{string} Either \code{auto}: the point characters will be automatically set or different pch are set.}

\item{lpos3d}{\code{string} Indicates the legend position for the 3D graph. bottom, left, and right are accepted.}

\item{cexsym}{\code{numeric} The size of pch in the 3D plot.}
}
\value{
If "2D" or "1D" is the selected type, then a ggplot2 graph will be the output and a "3D" type will return a scatterplot3D plot.
}
\description{
Title Plotting to show the quality controlled data in environmental space.
}
