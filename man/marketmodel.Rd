\name{marketmodel}
\alias{marketmodel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Market Model Objects
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{marketmodel} is used to create market model objects.
}
\usage{
marketmodel(name, n, gamma, diffmatrix, diag = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{name}{
%%     ~~Describe \code{x} here~~
a string which is the name of the market model (e.g. Atlas model).}
  \item{n}{
an integer which is the number of assets in the model.}
  \item{gamma}{
represents the instantaneous growth rates. It can be a function or a numeric vector. In the latter case the growth rates are constant.}
  \item{diffmatrix}{
represents the diffusion matrix of the model. There are four possibilities: (i) a numeric vector, (ii) a matrix, (iii) a vector-valued function, (iv) a matrix-valued function. In cases (i) and (iii), the matrix is diagonal. The dimensions of the matrix are \code{n} times \code{n}. In the first two cases the diffusion matrix is constant.}
  \item{diag}{if \code{TRUE}, the diffusion matrix is diagonal. The default value is \code{FALSE}.} 
}
\details{
%% ~ If necessary, more details than the description above ~~
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A market model is defined by a system of stochastic differential equations (SDE) of the form
  
dlog X_i(t) = gamma_i(t)dt + Sigma(t) dW(t),   i = 1, ..., n,

where gamma_i(t) are the growth rates (represented by \code{gamma}), Sigma is the n times n diffusion matrix (represented by \code{diffmatrix}), and W(t) is an n-dimensional standard Brownian motion. The unit of time is annual. We assume that the coefficients are functions of the X_i's, i.e., the system is Markovian. Note that the SDE are stated in terms of the logarithms of the X_i's.

The Atlas model (see \code{\link{AtlasModel}}) and the volatility-stablized market model (see \code{\link{VolStabModel}}) are predefined in the package. More general rank-based models can be constructed as \code{marketmodel} objects using this function.

The function \code{\link{SimMarketModel}} is used to simulate a market model.

At present no effort is put to check the consistency among the inputs (e.g. inconsistent dimensions).
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%% ...
\item{name}{the name of the model.}
\item{gamma}{the growth rate function.}
\item{diffmatrix}{the diffusion matrix which can be a constant or a function (see above for the details).}
\item{n}{the number of stocks in the model.}
\item{diag}{\code{TRUE} or \code{FALSE} as supplied by the user.}
}
\references{
Fernholz, E. R. (2002) \emph{Stochastic portfolio theory}. Springer.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{AtlasModel}},
\code{\link{SimMarketModel}},
\code{\link{VolStabModel}}
}
\examples{
# Create a model of two independent geometric Brownian motions
model1 <- marketmodel(name = "GBM", n = 2,
                      gamma = c(0.1, 0.05),
                      diffmatrix = c(0.1, 0.2),
                      diag = TRUE)

# Create an Atlas model of 100 stocks
model2 <- AtlasModel(n = 100, g = 0.0001, sigma = 0.1)

# Create a Volatility stabilized market of 10 stocks
model3 <- VolStabModel(n = 10, alpha = 0.001, sigma = 0.01)
}
