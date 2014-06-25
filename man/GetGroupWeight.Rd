\name{GetGroupWeight}
\alias{GetGroupWeight}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Computing First and Second Level Portfolio Weights
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Given a portfolio weight vector and a grouping, the function \code{GetGroupWeight} decompose the portfolio into a portfolio of portfolios. See the decription below for more details.
}
\usage{
GetGroupWeight(pi, group.index)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pi}{
%%     ~~Describe \code{x} here~~
a portfolio weight vector.
}
  \item{group.index}{
a list whose components form a partition of 1, 2, ..., n, where n is the length of \code{pi}.
}
}
\details{
%% ~ If necessary, more details than the description above ~~
This function is mainly intended to be used internally in \code{\link{EnergyEntropyDecomp}}.

We explain the main idea with an example. For more details, see Section 3 of Pal and Wong (2013). Consider the portfolio pi = (0.1, 0.2, 0.3, 0.4) for four stocks. To fix ideas, suppose the first two stocks are financial stocks, and the other two are utility stocks. The first two stocks can be regarded to form a "sub-portfolio" of financial stocks, and the other two form a sub-portfolio of utility stocks. Hence, the portfolio pi can be regarded as a portfolio of two portfolios.

The portfolio puts 0.3 weight into financial stocks and 0.7 weight into utility stocks. Hence the first level portfolio weights are 0.3 and 0.7. Restricting to the finanical sector, the second level portfolio weights are 0.1/(0.1 + 0.2) and 0.2/(0.1 + 0.2) respectively. Hence the  (normalized) weights for the financial sector portfolio are 1/3 and 2/3. Similarly, the weights for the utility sector portfolio are 3/7 and 4/7. The function \code{GetGroupWeight} performs this decomposition.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A list containing the following components.
\item{group.weight}{a vector of first level portfolio weights.}
\item{cond.weight}{a list whose components are the second level portfolio weights.}
}
\references{
Pal, S. and T.-K. L. Wong (2013). Energy, entropy, and arbitrage. \emph{arXiv preprint arXiv:1308.5376}.
}

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
% \code{\link{GetWeight}}
\code{\link{FreeEnergy}}, \code{\link{RelativeEntropy}}
}
\examples{
# The example described above
pi <- c(0.1, 0.2, 0.3, 0.4)

group.index <- list()
group.index[[1]] <- c(1, 2)
group.index[[2]] <- c(3, 4)

GetGroupWeight(pi, group.index)
}
