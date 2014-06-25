\name{FernholzDecomp}
\alias{FernholzDecomp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Fernholz's Decomposition for a Buy-and-hold Toy Market
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{FernholzDecomp} computes the Fernholz decomposition of a functionally generated portfolio.
}
\usage{
FernholzDecomp(market, portfolio, plot = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{market}{
%%     ~~Describe \code{x} here~~
a \code{toymkt} object where \code{market$buy.and.hold} is \code{TRUE}.}
  \item{portfolio}{
an \code{fgp} object represents a functionally generated portfolio.}
  \item{plot}{
\code{TRUE} or \code{FALSE}. If \code{TRUE}, the Fernholz decomposition will be plotted. The default value is \code{TRUE}.
}
}

\details{
%% ~ If necessary, more details than the description above ~~
Functionally generated portfolios (see \code{\link{fgp}}) and Fernholz's decomposition play an important role in stochastic portfolio theory.

In this context, the benchmark portfolio is a buy-and-hold market portfolio (modeled as a \code{toymkt} object in this package). The portfolio weights of the benchmark is represented by the market weight \eqn{\mu(t)}. The portfolio manager chooses portfolio weights \eqn{\pi(t)}.

Let \eqn{V(t)} be the growth of $1 of the manager's portfolio divided by that of the benchmark. Initially \eqn{V = 1} and it increases when the manager outperforms the market. The quantity \eqn{log(V(t))} is called the relative log return.

For a functionally generated portfolio, the portfolio weights \eqn{\pi(t)} are deterministic functions of the current market weight \eqn{\mu(t)}. More precisely, the portfolio weights \eqn{\pi(t)} are given by the derivatives of \eqn{log(\Phi)} at \eqn{\mu(t)}, where \eqn{\Phi} is called the generating function. See the references for more details (the notation here follows that of Pal and Wong (2014)).

In this case, Fernholz's decomposition states that the relative log return has the decomposition
\deqn{log(V(t)) = [log(\Phi(\mu(t))) - log(\Phi(\mu(0)))] + \Theta(t),}
where \eqn{\Theta(t)} is called the drift process. Note that the first term depends only on the current and initial positions of the market weights. The drift process is determined by the portfolio and the cumulative amount of market volatility. This is the decomposition implemented by the function \code{FernholzDecomp}. See also Chapter 6 of Fernholz (2002).
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
A list containing the following components.
\item{portfolio}{growth of $1 of the portfolio.}
\item{benchmark}{growth of $1 of the market portfolio.}
\item{relative.return}{cumulative excess log return with respect to the market portfolio.}
\item{generating function}{change of the log of the generating function.}
\item{drift}{drift process.}
}
\references{
%% ~put references to the literature/web site here ~
Fernholz, E. R. (2002) \emph{Stochastic portfolio theory}. Springer.

Pal, S. and T.-K. L. Wong (2014). The geometry of relative arbitrage. \emph{arXiv preprint arXiv:1402.3720}.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{fgp}}
}
\examples{
# Plot the Fernholz decomposition for the entropy-weighted portfolio
data(applestarbucks)
market <- toymkt(applestarbucks)
output <- FernholzDecomp(market, EntropyPortfolio, plot = TRUE)
}
