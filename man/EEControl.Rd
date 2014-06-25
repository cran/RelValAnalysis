\name{EEControl}
\alias{EEControl}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Control Term in the Energy-entropy Decomposition
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function computes the control term of the energy-entropy decomposition.
}
\usage{
EEControl(pi.current, pi.next, nu.next, nu.implied = nu.next)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pi.current}{
%%     ~~Describe \code{x} here~~
a numeric vector of the current portfolio weights.
}
  \item{pi.next}{
a numeric vector of the portfolio weights for the next period.
}
  \item{nu.next}{
a numeric vector of the benchmark weights for the next period.
}
  \item{nu.implied}{
a numeric vector of the implied benchmark weights. The default value is \code{nu.next} (in this case the benchmark is buy-and-hold).
}
}
\details{
%% ~ If necessary, more details than the description above ~~
The control term measures how much the portfolio moves towards the current market weights. For details, see Section 2 of Pal and Wong (2013). Here the formula is modified slightly so that the energy-entropy decomposition holds identically whether the market is buy-and-hold or not.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A number.
}
\references{
Pal, S. and T.-K. L. Wong (2013). Energy, entropy, and arbitrage. \emph{arXiv preprint arXiv:1308.5376}.}

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{FreeEnergy}},
\code{\link{RelativeEntropy}},
\code{\link{EnergyEntropyDecomp}}
}
\examples{
pi.current <- c(0.2, 0.3, 0.5)
pi.new <- c(0.3, 0.3, 0.4)
mu.new <- c(0.5, 0.3, 0.2)

EEControl(pi.current, pi.new, mu.new)
}
