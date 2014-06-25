\name{CapDistSlope}
\alias{CapDistSlope}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Slope of a Capital Distribution Curve
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{CapDistSlope} computes the slope of a capital distribution curve.
}
\usage{
## S3 method for class "capdist"

CapDistSlope(x, cut.end = 0.1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a \code{capdist} object.
}
  \item{cut.end}{A number between 0 and 1. It is the proportion of the smallest assets that will be ignored when fitting a straight line to the capital distribution curve. The default value is 0.1.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
If the capital distribution curve is a straight line, we say that the capital distribution follows a Pareto distribution. Empirically, a lot of capital distribution curves are approximately Pareto shaped.

The slope is estimated by ordinary least squares after removing the smallest \code{cut.end} proportion of the weights.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
The slope.
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
CapDistSlope(x)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

