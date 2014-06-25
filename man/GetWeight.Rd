\name{GetWeight}
\alias{GetWeight}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Computing Portfolio Weights from a Weight Function
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Given the benchmark weights (say, derived from a toy market, see \code{\link{toymkt}}) and a function which maps benchmark weights to portfolio weights, the function \code{GetWeight} computes a matrix of portfolio weights.
}
\usage{
GetWeight(market, weight.function, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{market}{
%%     ~~Describe \code{x} here~~
a \code{toymkt} object or a matrix/dataframe of benchmarket weights.
}
  \item{weight.function}{
a function object representing the weight function. The weight function depends only on the current market weights.
}
  \item{...}{Additional parameters of \code{weight.function}. See the example below.}
}
\details{
%% ~ If necessary, more details than the description above ~~
A probability vector is a numeric vector with non-negative entries summing to one. 
\code{weight.function} is a function which maps probability vectors to probability vectors. It represents a portfolio whose weights are deterministic functions of the current benchmark weights.  
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A matrix where each row represents the portfolio weights for a period.
}

\seealso{
\code{\link{Invest}}
}
\examples{
data(applestarbucks) 
market <- toymkt(applestarbucks)

# This is the diversity-weighted portfolio
weight.function <- function(x, p) {
  return(x^p / sum(x^p))
}

weight <- GetWeight(market, weight.function, p = 0.7)
Invest(market, weight)
}
