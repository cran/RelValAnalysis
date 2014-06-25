\name{RenyiEntropy}
\alias{RenyiEntropy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Renyi Entropy
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{Renyi} computes the Renyi entropy of a probability vector.
}
\usage{
RenyiEntropy(x, p)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric vector representing a probability distribution.
}
  \item{p}{
%%     ~~Describe \code{x} here~~
a number not equal to 1. The default is 0.5.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The Renyi entropy is a generalization of Shannon entropy. See Example 3.4.8 of Fernholz (2002) for more details.
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
\code{\link{ShannonEntropy}},
\code{\link{Diversity}}
}
\examples{
# compute the Renyi entropy of the country weights.
x <- c(0.2, 0.3, 0.5)
RenyiEntropy(x, p = 0.5)
}
