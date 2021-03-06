\name{single.MA}
\alias{single.MA}
\title{Single MA}
\usage{
  single.MA(data, j.chains, j.iter, tauA, tauB, prior,
    jag.model.file, overdispersed = TRUE)
}
\arguments{
  \item{data}{}

  \item{j.chains}{number of chains in meta-analysis}

  \item{j.iter}{number of mcmc samples}

  \item{tauA}{prior on variance parameters}

  \item{tauB}{prior on variance parameters}

  \item{prior}{}

  \item{jag.model.file}{file to which model will be
  written}

  \item{overdispersed}{}
}
\value{
  jags.out, an mcmc.object with results of meta-analysis
}
\description{
  Individual Meta-analysis
}
\details{
  Individual meta-analysis for a specific trait and PFT is
  run by the function single.MA. This will allow power
  analysis to run repeated MA outside of the full loop over
  traits and PFTs.
}
\author{
  David LeBauer, Michael C. Dietze
}

