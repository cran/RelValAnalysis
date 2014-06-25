\name{RelativeEntropy}
\alias{RelativeEntropy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~]
Relative Entropy
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The function \code{RelativeEntropy} is used to compute the relative entropy between two probability distributions.
}
\usage{
RelativeEntropy(p, q, group.index = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
%%     ~~Describe \code{x} here~~
a numeric vector representing a probability distribution.
}
  \item{q}{
a numeric vector representing a probability distribution. \code{p} and \code{q} must have the same length.
  }
  \item{group.index}{
if provided, the relative entropy will be decomposed according to the chain rule (see below for more details). The default is \code{NULL}. For the format of \code{group.index}
see the example in \code{\link{GetGroupWeight}}.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Relative entropy can be thought of as a measure of distance between two probability distributions. It is also known as the Kullback-Leibler divergence and is usually denoted by H(p|q). It is not a metric as it is not symmetric and it does not satisfy the triangle inequality.

If there is an index \code{i} where \code{q[i] == 0} but \code{p[i] > 0}, then the relative entropy is \code{Inf}. Mathematically, this happens when \code{p} is not absolutely continuous with respect to \code{q}.

If \code{group.index} is provided the relative entropy will be decompoesd using the chain rule stated in Lemma 3.1(i) of Pal and Wong (2013), see equation (23) there. In this case the output has \code{1 + 1 + m} components, where \code{m} is the number of groups defined by \code{group.index}. The first component is the left-hand-side of (23). The second component is the first term on the right-hand-side of (23). The other \code{m} components are the terms in the sum on the right-hand-side of (23).
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A non-negative number or \code{+Inf} if \code{group.index} is not given. A numeric vector if \code{group.index} is given.
}
\references{
%% ~put references to the literature/web site here ~
Pal, S. and T.-K. L. Wong (2013). Energy, entropy, and arbitrage. \emph{arXiv preprint arXiv:1308.5376}.
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{ShannonEntropy}}
}
\examples{
p <- c(0.3, 0.3, 0.4)
q <- c(0.5, 0.3, 0.2)

RelativeEntropy(p, q)
RelativeEntropy(q, p)  # relative entropy is not symmetric
}
