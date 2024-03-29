% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mam.R
\name{mam}
\alias{mam}
\title{Fit a Marginal Additive Model}
\usage{
mam(
  smooth,
  re,
  fe,
  dat,
  margdat = dat,
  preddat = dat,
  control = mam_control(),
  ...
)
}
\arguments{
\item{smooth}{A list of objects of class \code{xx.smooth.spec} created using \code{mgcv::s()}.
Any smooth that is compatible with \code{gamm4::gamm()} is compatible; see the documentation for that
function. To our knowledge the main (only?) incompatible smooth is the tensor product \code{bs='te'},
and you can use \code{bs='t2'} in that case.}

\item{re}{A **two-sided** random effects formula of the form \code{y~(1|id)} compatible with use in \code{lme4::lmer}.
See the documentation for that function, or \code{lme4::lFormula}. This formula should not contain fixed effects,
only grouping terms and the response. **This is where the response is specified**. If you have no group-level random effects,
then you don't need \code{mam}, use \code{mgcv::gam}.}

\item{fe}{A **one-sided** fixed effects formula of the form \code{~x} to be passed to \code{model.matrix()}.}

\item{dat}{The data to be used to fit the conditional model. A \code{data.frame} containing all of the
variables in \code{smooth}, \code{re}, and \code{fe}, including the response (specified through \code{re}).}

\item{margdat}{A \code{data.frame} whose rows are the points where the approximate marginal means will be computed.
Defaults to \code{dat}, and we have so far found no reason not to do this, but you can do something different if you want.}

\item{preddat}{Data at which to compute fitted values. Also defaults to \code{dat}, for now.}

\item{control}{Output of \code{mam::mam_control()}. See documentation for that function for options.}

\item{...}{not used.}
}
\value{
Object of classes \code{c('mam','gam','glm','lm')} representing the marginal additive model.
}
\description{
Fit a Marginal Additive Model. This function implements Algorithms ... in ...
See details.
}
\examples{
## Not run

}
