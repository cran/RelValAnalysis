\name{plot.toymkt}
\alias{plot.toymkt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Plotting Toy Market Objects
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{plot.toymkt} produces several plots of a \code{toymkt} object.
}
\usage{
\method{plot}{toymkt}(x, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a \code{toymkt} object.
}
\item{\dots}{further arguments such as \code{main}.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Four plots are produced: (i) time series of prices, (ii) time series of log returns, (iii) time series of benchmark weights, and (iv) time series of Shannon entropy (see \code{\link{ShannonEntropy}}) of the benchmark weights. Default settings are used for these plots, so they may not be informative if the number of assets is large.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{toymkt}}
}
\examples{
data(EuStockMarkets)
market <- toymkt(price = EuStockMarkets)
plot(market)
}
