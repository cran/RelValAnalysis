\name{capdist}
\alias{capdist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Captial-distribution Objects
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{capdist} is used to create capital-distribution objects.
}
\usage{
capdist(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric vector storing the market weights of assets.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The function \code{capdist} is used to create capital-distribution objects. These are vectors with class "\code{capdist}" which represents the distribution of capital in a market at a single moment. 

When the function is called, it is checked whether the sum of weights is equal to 1 up to 0.1\%. If not, a warning message will be displayed.

Capital distribution objects can be plotted. See \code{plot.capdist} for details.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A \code{capdist} object.
}
\references{
%% ~put references to the literature/web site here ~
Fernholz, E. R. (2002) \emph{Stochastic portfolio theory}. Springer.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{plot.capdist}}
}
\examples{
# Create a random distribution
x <- runif(100)
x <- x/sum(x)
x <- capdist(x)
plot(x)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

