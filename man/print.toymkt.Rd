\name{print.toymkt}
\alias{print.toymkt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Printing Toy Market Object
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{print.toymkt} prints a \code{toymkt} object.
}
\usage{
\method{print}{toymkt}(x, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a \code{toymkt} object.
}
\item{\dots}{further arguments.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The number of assets is printed together with their names. This is followed by the components of the object.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{toymkt}}
}
\examples{
data(EuStockMarkets)
market <- toymkt(EuStockMarkets)
market
}
