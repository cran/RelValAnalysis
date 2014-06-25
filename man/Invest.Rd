\name{Invest}
\alias{Invest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Investing in a Toy Market
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Given the portfolio weights and a toy market, the function \code{Invest} simulates the growth of $1 of the corresponding portfolio and that of the benchmark.
}
\usage{
Invest(market, weight, plot = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{market}{
%%     ~~Describe \code{x} here~~
a \code{toymkt} object.
}
  \item{weight}{
the portfolio weights. The portfolio weights must be non-negative and sum to one (full investment with no short sales). It can be a \code{zoo} object or matrix/dataframe whose number of rows is at least as large as that of \code{market$R}. If the number of rows of \code{weight} is larger than required, only the initial rows will be used. \code{weight} can also be a numeric vector whose length is equal to the number of columns of \code{market$R} (the number of assets). In the latter case the portfolio is assumed to be constant-weighted through out.
}
  \item{plot}{
\code{TRUE} or \code{FALSE}. If \code{TRUE}, the growth of $1 of the portfolio will be plotted together with the growth of $1 of the market portfolio. The default value is \code{TRUE}.
  }
}
\details{
%% ~ If necessary, more details than the description above ~~
The relative value in the second plot is the ratio of the growth of $1 of the portfolio to that of the benchmark. It is called relative because the value is normalized by the value of the benchmark portfolio.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
A list containing the following components.
\item{growth}{a \code{zoo} object representing the growth of $1 of the portfolio and the benchmark.}
\item{R}{a \code{zoo} object of simple returns of the two portfolios.}
\item{r}{a \code{zoo} object of log returns of the two portfolios.}
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
% \code{\link{GetWeight}}
\code{\link{toymkt}}
}
\examples{
# Performance of the equal-weighted portfolio
data(applestarbucks)
market <- toymkt(applestarbucks)
weight <- c(0.5, 0.5)  # equal-weighted portfolio
result <- Invest(market, weight, plot = TRUE)
}
