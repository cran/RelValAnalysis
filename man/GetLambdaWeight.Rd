\name{GetLambdaWeight}
\alias{GetLambdaWeight}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Portfolio Weights of the Lambda-strategy
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Given a toymkt and an initial weight vector, the function \code{GetLambdaWeight} computes a matrix of portfolio weights following the lambda strategy.
}
\usage{
GetLambdaWeight(market, initial.weight = market$benchmark.weight[1, ], lambda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{market}{
%%     ~~Describe \code{x} here~~
a \code{toymkt} object with \code{toymkt$buy.and.hold = TRUE}.
}
  \item{initial.weight}{
the initial portfolio weights. The default is the initial benchmark weights.
}
  \item{lambda}{
a number between 0 and 1.
}
}
\details{
%% ~ If necessary, more details than the description above ~~
For details see \code{\link{GetNewLambdaWeight}} and Section 6.1 of Pal and Wong (2013). The purpose of this function is analogous to that of \code{\link{GetWeight}}, but here the strategy depends on the entire history of market weights.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A matrix of portfolio weights.
}
\references{
Pal, S. and T.-K. L. Wong (2013). Energy, entropy, and arbitrage. \emph{arXiv preprint arXiv:1308.5376}.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{GetNewLambdaWeight}},
\code{\link{EnergyEntropyDecomp}}
}
\examples{
data(applestarbucks)
market <- toymkt(applestarbucks)
weight <- GetLambdaWeight(market, initial.weight = c(0.5, 0.5), lambda = 0.2)
decomp <- EnergyEntropyDecomp(market, weight, plot = TRUE)
}
