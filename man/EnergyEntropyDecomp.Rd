\name{EnergyEntropyDecomp}
\alias{EnergyEntropyDecomp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Energy-entropy Decomposition
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{EnergyEntropyDecomp} computes and plots the energy-energy decomposition of any portfolio relative to the benchmark portfolio.
}
\usage{
EnergyEntropyDecomp(market, weight, grouping = NULL, plot = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{market}{
%%     ~~Describe \code{x} here~~
an object of class \code{toymkt}.}
  \item{weight}{
a matrix or dataframe of portfolio weights. Each row represents a vector of portfolio weights.}
  \item{grouping}{
a numeric vector of positive integers taking values from 1 to m, where m is the number of groups. An example is \code{c(1, 1, 2, 3, 2, 3, 1)}, where m is 3. If \code{grouping} is given, the hierachical energy-entropy decomposition will be performed.
}
  \item{plot}{
\code{TRUE} or \code{FALSE}. If \code{TRUE}, the energy-entropy decomposition will be plotted. The default value is \code{TRUE}.
  }
}
\details{
%% ~ If necessary, more details than the description above ~~
The energy-entropy decomposition decomposes the excess log return of a portfolio (with respect to the benchmark) into three terms: free energy, control and change in relative entropy. See Section 2 of Pal and Wong (2013) for details. It is important to note that Pal and Wong (2013) assumes that the benchmark is a buy-and-hold portfolio, so that \code{market$buy.and.hold} is \code{TRUE}. The decomposition is modified so that an identity holds even when the market is not buy-and-hold. However in that case the control term in the decomposition is harder to interpret.

A portfolio can sometimes be thought of as a portfolio of portfolios, and the energy-entropy decomposition has a corresponding hierchical decomposition, see Section 3 of Pal and Wong (2013). If \code{grouping} is provided, the hierachical decomposition will be performed and plotted. An example of \code{grouping} is a label for sectors (say 1: financial, 2: utility, 3:energy, etc). For more details see the supplementary files available on the author's website.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
If \code{grouping} is not provided, it is a \code{zoo} object with the followign columns. The definitions of the terms can be found in Section 2 of Pal and Wong (2013). Each term represents an increment for the period.
\item{Excess log return}{relative log return.}
\item{Free energy}{free energy.}
\item{Relative entropy}{minus of the change of relative entropy.}
\item{Control}{control.}
\item{Drift}{drift. It equals free energy + control.}
If \code{grouping} is provided, it is a list containing several zoo objects:
\item{dlogV}{relative log return.}
\item{free.energies}{free energy and its decomposition.}
\item{relative.entropies}{relative entropy and its decomposition.}
\item{control}{control and its decomposition.}

}
\references{
%% ~put references to the literature/web site here ~
Pal, S. and T.-K. L. Wong (2013). Energy, entropy, and arbitrage. \emph{arXiv preprint arXiv:1308.5376}.

Author's website: \url{http://www.math.washington.edu/~wongting/}
}

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{FreeEnergy}},
\code{\link{RelativeEntropy}},
\code{\link{EEControl}},
}
\examples{
# Example 1
# Energy-entropy decomposition for the entropy-weighted portfolio
data(applestarbucks)
market <- toymkt(applestarbucks, initial.weight = c(0.5, 0.5))
weight <- GetWeight(market, EntropyPortfolio$weight.function)
decomp <- EnergyEntropyDecomp(market, weight, plot = TRUE)


# Example 2
# Example of a hierchical decomposition of the entropy-weighted
# portfolio in the Atlas market model
model <- AtlasModel(n = 6, g = 0.1, sigma = 0.2)
market <- SimMarketModel(model)  # default settings
grouping <- c(1, 1, 2, 2, 2, 2)
weight <- GetWeight(market, EntropyPortfolio$weight.function)
decomp <- EnergyEntropyDecomp(market, weight, grouping, plot = TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
