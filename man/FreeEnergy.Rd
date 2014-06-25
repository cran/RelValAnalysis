\name{FreeEnergy}
\alias{FreeEnergy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Free Energy
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{FreeEnergy} computes the free energy of a portfolio given the simple returns of the individual assets.
}
\usage{
FreeEnergy(pi, R, group.index = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pi}{
%%     ~~Describe \code{x} here~~
a numeric vector of portfolio weights (a probability vector).
}
  \item{R}{
a numeric vector of simple returns.
}
\item{group.index}{
if provided, the free energy will be decomposed according to the chain rule (see below for more details). The default is \code{NULL}. For the format of \code{group.index}
see the example in \code{\link{GetGroupWeight}}.
}
}
\details{
%% ~ If necessary, more details than the description above ~~
The free energy equals the portfolio log return minus the weighted average log return of the individual assets, see Definition 2.2 of Pal and Wong (2013). It is a weighted measure of the cross volatility of the market.

If \code{group.index} is provided the free energy will be decompoesd using the chain rule stated in Lemma 3.1(ii) of Pal and Wong (2013), see equation (24) there. In this case the output has \code{1 + 1 + m} components, where \code{m} is the number of groups defined by \code{group.index}. The first component is the left-hand-side of (24). The second component is the first term on the right-hand-side of (24). The other \code{m} components are the terms in the sum on the right-hand-side of (24).
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A non-negative number or \code{+Inf} if \code{group.index} is not given. A numeric vector if \code{group.index} is given.
}
\references{
Pal, S. and T.-K. L. Wong (2013). Energy, entropy, and arbitrage. \emph{arXiv preprint arXiv:1308.5376}.
}

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{EnergyEntropyDecomp}}
}
\examples{
pi <- c(1/3, 1/3, 1/3)  # portfolio weights
R <- c(0.1, 0.02, -0.05)  # simple returns

FreeEnergy(pi, R)
}
