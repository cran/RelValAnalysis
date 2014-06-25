\name{ParetoCapDist}
\alias{ParetoCapDist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Generating a Pareto Capital Distribution
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{ParetoCapDist} is used to generate a capital-distribution object which follows a Pareto distribution with user-defined slope parameter.
}
\usage{
ParetoCapDist(n, index = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
%%     ~~Describe \code{x} here~~
the number of assets.}
  \item{index}{
a positive number. The slope of the capital distribution curve (i.e., the log-log curve of market weights against ranks) is \code{-index}.
}
}
\details{
%  ~~ If necessary, more details than the description above ~~
A capital distribution is said to follow a Pareto distribution if the log-log curve of market weights against ranks is linear. This function creates a hypothetitical market distribution given the slope of the curve.
}
\value{
a \code{capdist} object.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
Fernholz, E. R. (2002) \emph{Stochastic portfolio theory}. Springer.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{capdist}}
}
\examples{
x <- ParetoCapDist(n = 100, index = 1.1)

plot(x)
}
