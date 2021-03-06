\name{append.covariate}
\alias{append.covariate}
\title{Append covariate data as a column within a table
\code{append.covariate} appends one or more tables of covariate data
as a single column in a given table of trait data.
In the event a trait has several covariates across several given tables,
the first table given will take precedence}
\usage{
  append.covariate(data, column.name, ...,
    covariates.data = list(...))
}
\arguments{
  \item{data}{trait dataframe that will be appended to.}

  \item{column.name}{name of the covariate as it will
  appear in the appended column}

  \item{covariates.data}{one or more tables of covariate
  data, ordered by the precedence they will assume in the
  event a trait has covariates across multiple tables. All
  tables must contain an 'id' and 'level' column, at
  minimum.}
}
\description{
  Append covariate data as a column within a table
  \code{append.covariate} appends one or more tables of
  covariate data as a single column in a given table of
  trait data. In the event a trait has several covariates
  across several given tables, the first table given will
  take precedence
}

