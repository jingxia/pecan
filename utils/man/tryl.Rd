\name{tryl}
\alias{tryl}
\title{tryl}
\usage{
  tryl(FUN)
}
\arguments{
  \item{FUN}{function to be evaluated for error}
}
\value{
  FALSE if function returns error; else TRUE
}
\description{
  Test if function gives an error
}
\details{
  adaptation of try that returns a logical value (FALSE if
  error)
}
\examples{
tryl(1+1)
# TRUE
tryl(sum("a"))
# FALSE
}
\author{
  David LeBauer
}

