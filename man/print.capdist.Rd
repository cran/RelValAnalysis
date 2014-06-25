\name{print.capdist}
\alias{print.capdist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Printing Capital Distribution Objects
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{print.capdist} prints a capital distribution objects.
}
\usage{
\method{print}{capdist}(x, m = 5L, cut.end = 0.1, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a \code{capdist} object.
}
  \item{m}{
a positive integer which is at most half of the length of \code{x}. The largest and smallest \code{m} assets will be printed. The default value is 5.
}
  \item{cut.end}{a number between 0 and 1. It is the proportion of the smallest assets that will be ignored when fitting a straight line to the capital distribution curve. The default value is 0.1.
}
\item{\dots}{further arguments.}
}
\references{
%% ~put references to the literature/web site here ~
Fernholz, E. R. (2002) \emph{Stochastic portfolio theory}. Springer.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{capdist}}
}
