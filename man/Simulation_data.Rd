\name{Simulation_data}
\alias{Simulation_data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generic simulation prodedure used in the paper}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Simulation_data(popmodelfunction, theta, xi, conditionalto, method = NULL, nbreps = 3000, nbrepI = 3000, nbrepSigma = 1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{popmodelfunction}{
%%     ~~Describe \code{popmodelfunction} here~~
}
  \item{theta}{
%%     ~~Describe \code{theta} here~~
}
  \item{xi}{
%%     ~~Describe \code{xi} here~~
}
  \item{conditionalto}{
%%     ~~Describe \code{conditionalto} here~~
}
  \item{method}{
%%     ~~Describe \code{method} here~~
}
  \item{nbreps}{
%%     ~~Describe \code{nbreps} here~~
}
  \item{nbrepI}{
%%     ~~Describe \code{nbrepI} here~~
}
  \item{nbrepSigma}{
%%     ~~Describe \code{nbrepSigma} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (popmodelfunction, sampleparam, theta, xi, conditionalto, 
    method = NULL, nbreps = 3000, nbrepI = 3000, nbrepSigma = 1000) 
{
    model <- popmodelfunction(theta, xi, conditionalto)
    cave <- cav(model, nbrepSigma = nbrepSigma, nbrepI = nbrepI, 
        method)
    sim <- simule(model, nbreps = nbreps, method)
    return(list(model = model, xi = xi, sim = sim, cave = cave))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
