
#' @title Plot to the performance metrics across the thresholds used in model comparison
#'
#' @param modelout The model comparison output obtained.
#' @param eval The model evaluation metrics. Check \code{\link{indep}} and \code{\link{dep}} for details.
#' @param type Either test data output \code{test} or training data output \code{train}. Default \code{test}.
#' @param cutoff The value to limit the thresholds to display. Default \code{0.5}
#'
#' @return ggplot2 output with performance metrics such as accuracy, sensitivity, specificity..
#'
#' @importFrom utils stack
#'
#' @export
#'
#'
ggperform <- function(modelout, eval=c('auc', 'Accuracy'), type = 'test', cutoff = 0.5){

  #Get the performance values form the model comparison output
  perfdata <- get_performance(modeloutput = modelout, type = type)

  #Stack the data to elongate for effective filtering and plotting
  stackdata <- cbind(perfdata[, c("species", "scenario")], stack(perfdata[,eval]))

  #Filter out particular thresholds
  fdata <- stackdata[stackdata$scenario >=cutoff,]

  #Get a summary out for plotting
  meanperf <- aggregate(values~ind+ scenario, data = fdata, FUN = mean)

  #Plotting the summary using ggplot2
  gplot <- ggplot2::ggplot(data = meanperf, ggplot2::aes_string(x = "scenario", y = "values"))+
    ggplot2::geom_point()+
    ggplot2::facet_wrap(~ind,scales = 'free_x')

  return(gplot)
}