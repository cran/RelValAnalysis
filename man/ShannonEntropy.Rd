\name{ShannonEntropy}
\alias{ShannonEntropy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Shannon Entropy
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{ShannonEntropy} computes the Shannon entropy of a probability vector.
}
\usage{
ShannonEntropy(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric probability vector (a vector with non-negative entries summing to one).
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Shannon entropy is a measure of uncertainty. It is maximized when the distribution is uniform, and is zero if it is a point mass. It is used in stochastic portfolio theory as a measure of market diversity. It is also the generating function of the entropy-weighted portfolio (see \code{\link{EntropyPortfolio}}). See Examples 3.1.2 and 3.4.3 of Fernholz (2002) for more information.

It will be checked whether the input \code{x} is reasonably close to a probability vector. If some entries are negative or the sum of the entries is not close enough to 1 (the error margin is 0.01), an error message will be displayed.
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
\code{\link{EntropyPortfolio}}, \code{\link{RelativeEntropy}}
}
\examples{
x <- c(1/3, 1/3, 1/3)
ShannonEntropy(x)  # equals log(3)
}
