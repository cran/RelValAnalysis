\name{plot.capdist}
\alias{plot.capdist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Plotting Captial Distribution Objects
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{plot.capdist} plots the capital distribution curve.
}
\usage{
\method{plot}{capdist}(x, draw.line = TRUE, cut.end = 0.1, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a \code{capdist} object.
}
  \item{draw.line}{
\code{TRUE} or \code{FALSE}. If true, a straight line is fitted to the capital distribution curve. The default value is \code{TRUE}.
}
  \item{cut.end}{A number between 0 and 1. It is the proportion of the smallest assets that will be ignored when fitting a straight line to the capital distribution curve. The default value is 0.1.}
  \item{\dots}{further arguments such as \code{main}.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
A capital distribution curve is the log-log curve of the market weights against the rank. Empirically, capital distribution curves are approximately Pareto-shaped with some concavity at the lower end.
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
# Create a random distribution
x <- runif(100)
x <- x/sum(x)
x <- capdist(x)
plot(x)
}
