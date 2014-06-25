\name{AtlasModel}
\alias{AtlasModel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Atlas Model
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{AtlasModel} is used to create a \code{ marketmodel} object which represents an Atlas model with user-provided parameters.
}
\usage{
AtlasModel(n, g, sigma)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
%%     ~~Describe \code{x} here~~
a positive integer representing the number of stocks in the market}
  \item{g}{
a positive number. In this model, \code{n*g} is the growth rate of the smallest stock.}
  \item{sigma}{
a positive number representing the common volatility of the stocks.}
}
\details{
%% ~ If necessary, more details than the description above ~~
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The definition of the Atlas model follows Example 5.3.3 in Fernholz (2002). The stochastic differential equation of the market capitalizations X_i(t) for the i-th stock takes the form

dlog X_i(t) = gamma_i(t)dt + sigma dW_i(t), i = 1, ..., n,

where gamma_i(t) = ng if stock i is the smallest, and is 0 otherwise.

It is the simplest market model which exhibits an asymptotic Pareto-shaped capital distribution curve.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A \code{marketmodel} object.
}
\references{
%% ~put references to the literature/web site here ~
Fernholz, E. R. (2002) \emph{Stochastic portfolio theory}. Springer.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{marketmodel}},
\code{\link{SimMarketModel}}
}
\examples{
# Create an Atlas model of 100 stocks
model <- AtlasModel(n = 100, g = 0.001, sigma = 0.2)

# Simulate the Atlas model to get 5 years of monthly data
market <- SimMarketModel(model, n.years = 5, frequency = 12)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

