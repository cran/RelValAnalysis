\name{GeometricMean}
\alias{GeometricMean}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Geometric Mean
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{GeometricMean} computes the geometric mean of non-negative numbers with a given weight.
}
\usage{
GeometricMean(x, weight = rep(1/length(x), length(x)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric vector with non-negative entries.
}
  \item{weight}{
a numeric probability vector. The default value is the vector with equal weights.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The geometric mean is used in stochastic portfolio theory as the generating function of the constant-weighted portfolio. See Example 3.1.6 of Fernholz (2002).
}
\value{
A number.
}
\references{
%% ~put references to the literature/web site here ~
Fernholz, E. R. (2002) \emph{Stochastic portfolio theory}. Springer.
}
\seealso{
\code{\link{ConstantPortfolio}}
}
\examples{
x <- c(0.3, 0.7)
weight <- c(0.6, 0.4)
GeometricMean(x, weight)
}
