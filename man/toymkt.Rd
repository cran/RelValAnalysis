\name{toymkt}
\alias{toymkt}
\alias{toymkt.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Toy Market Objects
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{toymkt} is used to create toy market objects. 
}
\usage{
toymkt(price = NULL, R = NULL, 
       benchmark.weight = NULL, initial.weight = NULL,
       buy.and.hold = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{price}{
%%     ~~Describe \code{x} here~~
A \code{zoo} object containing the price or market captitalizations of the assets. Matrix and dataframes are also accepted.}
  \item{R}{
Simple returns of the assets (same format as \code{price}). At least one of \code{price} and \code{R} must be supplied.
  }
  \item{benchmark.weight}{
Portfolio weights of the benchmark (same format as \code{price}).
}
  \item{initial.weight}{
a numeric vector of initial benchmark weights. All entries of \code{initial.weight} must be non-negative. If \code{initial.weight} is not supplied and \code{buy.and.hold} is \code{TRUE}, the initial weights will be equal-weighted by default. If \code{buy.and.hold} is \code{FALSE}, \code{initial.weight} will not be used.
}
  \item{buy.and.hold}{
  If \code{TRUE}, the benchmark is a buy-and-hold portfolio, and \code{benchmark.weight} will be ignored even if it is supplied. If \code{FALSE}, \code{benchmark.weight} must be supplied. The default value is \code{TRUE}.
}
}
\details{
%% ~ If necessary, more details than the description above ~~
The function \code{toymkt} is used to create toy market objects from prices, returns and/or benchmark weights. The universe consists of (say) n assets. For each asset, we have a time series of returns. A benchmark portfolio is given by a fixed set of portfolio weights, and we want to study the performances of portfolios with respect to this benchmark. The portfolio weights of the benchmark are called the benchmark weights.

If \code{buy.and.hold} is \code{TRUE}, the toy market is an idealized market where the benchmark is a buy-and-hold portfolio. In this case all data in the output is derived from \code{price} and \code{initial.weight}, or \code{R} and \code{initial.weight}. If \code{buy.and.hold} is \code{TRUE}, \code{initial.weight} is not given but \code{benchmark.weight} is given, the first row of \code{benchmark.weight} will be used as the initial weight vector.

In the case \code{buy.and.hold} is \code{FALSE} the benchmark portfolio can be quite arbitrary. It is defined in terms of the beginning benchmark weights for each period and the returns for each asset. 
}
\value{
A list containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{growth}{a \code{zoo} object containing the growth of $1 for each asset.}
  \item{R}{a \code{zoo} object containing the simple returns.}
  \item{r}{a \code{zoo} object containing the log returns.}
  \item{benchmark.weight}{a \code{zoo} object containing the benchmark weights of the assets. If \code{buy.and.hold = TRUE}, these are derived from the normalized market capitalizations.}
  \item{n}{number of assets in the market.}
  \item{buy.and.hold}{\code{TRUE} if the market is buy-and-hold.}
%% ...
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{print.toymkt}}, \code{\link{plot.toymkt}}
}
\examples{
# We use the EuStockMarkets dataset in the datasets package
data(EuStockMarkets)

# Example 1: Minimal specifications
# The market will be equal-weighted initially.
market <- toymkt(price = EuStockMarkets)
print(market)
plot(market)  # several plots


# Example 2: Generate a market from simulated log-normal returns.
n.periods <- 60
n.stocks <- 5
mu <- 0
sigma <- 0.1
R <- matrix(0, nrow = n.periods, ncol = n.stocks)
for (j in 1:n.stocks) {
  R[, j] <- exp(rnorm(n.periods, mean = mu, sd = sigma)) - 1
}
initial.weight <- c(0.1, 0.2, 0.3, 0.2, 0.2)  # specify initial weights
market <- toymkt(R = R, initial.weight = initial.weight,
                 buy.and.hold = TRUE)
plot(market)
}
