\name{VolStabModel}
\alias{VolStabModel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Volatility-Stabilized Model
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{VolStabModel} is used to create a \code{ marketmodel} object which represents an volatility-stabilized market model with user-provided parameters.
}
\usage{
VolStabModel(n, alpha, sigma)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
%%     ~~Describe \code{x} here~~
a positive integer representing the number of stocks in the market.}
  \item{alpha}{
a non-negative number. It is a growth rate parameter.}
  \item{sigma}{
a positive number. It is a volatility parameter.}
}
\details{
%% ~ If necessary, more details than the description above ~~
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The definition of the volatility-stabilized model is taken from Section 12 of Fernholz and Karatzas (2009). The stochastic differential equation of the market capitalization X_i(t) of the i-th stock takes the form

dlog X_i(t) = gamma_i(t)dt + sigma_i(t) dW_i(t), i = 1, ..., n,

where

gamma_i(t) = alpha / 2mu_i(t)

and

sigma_i(t) =  1 / sqrt(mu_i(t)).

This is a model which captures the idea that smaller stocks have larger growth rates and are more volatile.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A \code{marketmodel} object.
}
\references{
%% ~put references to the literature/web site here ~
Karatzas, I. and R. Fernholz (2009). Stochastic portfolio theory: an overview. \emph{Handbook of numerical analysis 15}, 89-167.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{marketmodel}},
\code{\link{SimMarketModel}}
}
\examples{
# Create a Volatility stabilized market of 10 stocks
model <- VolStabModel(n = 10, alpha = 0.1, sigma = 0.1)
}
