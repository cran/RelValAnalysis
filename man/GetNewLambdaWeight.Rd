\name{GetNewLambdaWeight}
\alias{GetNewLambdaWeight}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Portfolio Weights of the Lambda-strategy
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function computes the portfolio weights of the lambda strategy.
}
\usage{
GetNewLambdaWeight(pi.current, mu.next, energy, lambda = 0.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pi.current}{
%%     ~~Describe \code{x} here~~
current portfolio weight.
}
  \item{mu.next}{
market weights for the next period.
}
  \item{energy}{
a non-negative number. The free energy of the previous period.
}
  \item{lambda}{
a number between 0 and 1. The default is 0.5.
}
}
\details{
%% ~ If necessary, more details than the description above ~~
The lambda-strategy is a simple energy-entropy strategy that depends on a parameter lambda between 0 and 1, see Section 6.1 of Pal and Wong (2013) for more details. Given the portfolio weights of the previous time period, the portfolio weights of the next period is a convex combination of the previous weights and the current market weights, chosen in such a way that the drift term is a constant proportion of the free energy. 

In this implementation an SDE approximation is used. Hence the function is accurate only when \code{lambda} is small (say <= 0.5).
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A portfolio weight vector.
}
\references{
Pal, S. and T.-K. L. Wong (2013). Energy, entropy, and arbitrage. \emph{arXiv preprint arXiv:1308.5376}.
}

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{GetLambdaWeight}}
}
\examples{
pi.previous <- c(1/3, 1/3, 1/3)
mu.next <- c(0.5, 0.3, 0.2)
energy <- 0.05
lambda <- 0.3

GetNewLambdaWeight(pi.previous, mu.next, energy, lambda)
}
