\name{SimMarketModel}
\alias{SimMarketModel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Simulating a Market Model
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{SimMarketModel} is used to simulate a market model defined by a \code{marketmodel} object. The output is a \code{toymkt} object with which further analysis can be performed.
}
\usage{
SimMarketModel(model, n.years = 10, frequency = 12,
               initial.weight = rep(1/model$n, model$n),
               sub.freq = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{
%%     ~~Describe \code{x} here~~
a \code{marketmodel} object.}
  \item{n.years}{
an integer which is the number of years of data to be simulated. The default value is 10.}
  \item{frequency}{
an integer which is the number of periods for each year. The default value is 12, i.e., monthly data is generated.}
  \item{initial.weight}{
a numeric vector of positive numbers representing the initial weights of each stock. The default value is \code{rep(1/model$n, model$n)}, i.e., the market is equal-weighted initially.}
  \item{sub.freq}{a positive integer, which is the number of subperiods within each period. The default value is 1. This is included to allow more accurate simulation of models defined by stochastic differential equations.} 
}
\details{
%% ~ If necessary, more details than the description above ~~
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{SimMarketModel} simulates a given market model with user-defined parameters. See \code{\link{marketmodel}} for the definition of a market model.

The option \code{sub.freq} does the following. Suppose we set \code{frequency = 12} and \code{sub.freq = 4}. Although the output is monthly prices, during the simulation, for each month the algorithm divides in month into 4 subperiods (say 4 weeks). In other words, the actual time step in the simulation is

dt = 1 / frequency * subfreq,

and the output shows only the prices sampled monthly. This feature allows more accurate simulation of rank-based models, where multiple changes in rankings can happen within each sampling period.

When the aim is to simulate the evolution of capital distribution curves, the initial market weights play an important role. The default option is equal-weighting. To start the market at stationarity, there are three ways to proceed:

1) Remove an initial segment of the output.

2) Perform two simulations, where in the second simulation the market is started at the ending distribution of the first simulation.

3) Use the long term distribution (say Pareto with a certain slope parameter) directly if it is known. A possibility is to use \code{ParetoCapDist}.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A \code{toymkt} object containing the simulated market. For this object \code{buy.and.hold} is \code{TRUE}.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{AtlasModel}},
\code{\link{marketmodel}},
\code{\link{VolStabModel}}
}
\examples{
# Create an Atlas model of 5 stocks
model <- AtlasModel(n = 5, g = 0.05, sigma = 0.1)

# Simulate the model to get 20 years of monthly data
# with initial weights c(0.1, 0.2, 0.2, 0.2, 0.3)
market <- SimMarketModel(model, n.years = 20, 
                          initial.weight = c(0.1, 0.2, 0.2, 0.2, 0.3), 
                          frequency = 12)
plot(market)
}
