#' @title Model evaluation metrics
#'
#' @param data Species environmental data generated during bootstrapping or subsampling data.
#' @param predictions Model predictions from the \code{predict} function from stats package.
#' @param response The presence absence or presence only for presence-only models.
#' @param model Parameter to set the model of choices. Only \code{GLM} and \code{RF} are allowed.
#' @param cutoff Defines a threshold classify the model predictions/probabilities as presence or absent. Default is 0.5. The maximum is 1 and lowest is 0.
#' @param metrics Either to only consider threshold-dependent, threshold-independent or all evaluation metrics to determine model performance.
#'
#' @return evaluation metrics values
#'
#'
#' @seealso \code{\link{boot}}

evaluate <- function(data, predictions, response, model=NULL, cutoff, metrics){

  match.argc(metrics, choices = c('indep', 'dep', 'all'))

  observed <- unlist(data[, response]) #observed classes

  P <- attr(data, 'presence')

  A <- attr(data, 'absence')

  if(model=='GLM'){
    probs <- predictions
    predicted <- ifelse(probs>=cutoff, P, A)

  }else if(model=='RF1'){

    probs <- unlist(predictions[, P])

    predicted <- ifelse(probs>=cutoff, P, A)

  }else if(model=='RF'){

    probs <- unlist(predictions$predictions[, P])

    predicted <- ifelse(probs>=cutoff, P, A)
  }else{
    stop('No model found')
  }

  if(metrics=='indep'){

    output <- indep(probs = probs, observed = observed, A =A, P = P)

  }else if(metrics=='dep'){

    output <- dep(observed = observed, predicted = predicted, A =A, P = P)

  }else{
    auc <- indep(probs = probs, observed = observed, A =A, P = P)

    output2 <- dep(observed = observed, predicted = predicted, A =A, P = P)

    output = cbind(output2, auc)
  }

  return(output)
}

