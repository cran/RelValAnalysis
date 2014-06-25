\name{Diversity}
\alias{Diversity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Diversity
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{Diversity} computes the diversity of a probability distribution.
}
\usage{
Diversity(x, p = 0.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric vector with non-negative entries.
}
  \item{p}{
a parameter between 0 and 1. The default value is 0.5.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The diversity function is used in stochastic portfolio theory as a measure of market diversity. It is the generating function of the diversity-weighted portfolio (see \code{\link{DiversityPortfolio}}). See Example 3.4.4 of Fernholz (2002) for more information.
}
\value{
A number.
}
\references{
%% ~put references to the literature/web site here ~
Fernholz, E. R. (2002) \emph{Stochastic portfolio theory}. Springer.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{DiversityPortfolio}}
}
\examples{
x <- c(0.3, 0.2, 0.5)
Diversity(x, p = 0.7)
}
