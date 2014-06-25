\name{fgp}
\alias{fgp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Functionally Generated Portfolio Objects
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{fgport} is used to create functionally generated portfolio objects.
}
\usage{
fgp(name, gen.function, weight.function)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{name}{
%%     ~~Describe \code{x} here~~
a string which is the name of the portfolio (e.g. "Equal-weighted portfolio"")}
  \item{gen.function}{
the generating function. It is a smooth function of the market weights (see Theorem 3.1.5 of Fernholz (2002)).}
  \item{weight.function}{
the weight function of the portfolio. It must be related to \code{gen.function} via (3.1.7) of Fernholz (2002).
}
}
\details{
%% ~ If necessary, more details than the description above ~~
The function \code{fgp} is used to create functionally generated portfolio objects. Detailed treatments of functionally generated portfolios can be found in Chapter 3 of Fernholz (2002) as well as Pal and Wong (2014). In brief, a functionally generated portfolio is determined by a generating function (\code{gen.function}) and the weight function (\code{weight.function}).

Some common functionally generated portfolios are provided in the package. For example, \code{\link{EntropyPortfolio}} is the entropy-weighted, \code{\link{DiversityPortfolio}} is a constructs \code{fgp} objects for the diversity-weigthed portfolio, and \code{\link{ConstantPortfolio}} defines constant-weighted portfolios.

The most important operation concerning \code{fgp} objects is Fernholz's decomposition. See \code{\link{FernholzDecomp}} for more details.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{name}{a character string, representing the name of the portfolio}
  \item{gen.funtion}{a function object, representating the generating function}
  \item{weight.function}{a function object, representing the weight function}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Fernholz, E. R. (2002) \emph{Stochastic portfolio theory}. Springer.

Pal, S. and T.-K. L. Wong (2014). The geometry of relative arbitrage. \emph{arXiv preprint arXiv:1402.3720}.
}

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{FernholzDecomp}}
}
\examples{
# Example 1: The diversity-weighted portfolio with p = 0.5
# This has the same effect has DiversityPortfolio(p = 0.5)
my.portfolio <- fgp("Diversity-Weighted Portfolio, p = 0.5",
                    function(x) (sum(sqrt(x)))^2,
                    function(x) sqrt(x) / sum(sqrt(x)))
                    
                    
# Example 2: A quadratic Gini coefficient
# See Example 3.4.7 of Fernholz (2002)

# Generating function
gen.function <- function(x) {
  n <- length(x)
  return(1 - sum((x - 1/n)^2)/2)
}

# Weight function
weight.function <- function(x) {
  n <- length(x)
  S <- gen.function(x) 
  return(((1/n - x)/S + 1 - sum(x*(1/n - x)/S))*x)
}

# Define fgp object
my.portfolio <- fgp("Quadratic Gini",
                    gen.function, weight.function)

# Its performance in the apple-starbucks market
data(applestarbucks)
market <- toymkt(applestarbucks)
result <- FernholzDecomp(market, my.portfolio, plot = TRUE)

}
