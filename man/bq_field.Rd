% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bq-field.R
\name{bq_field}
\alias{bq_field}
\alias{bq_fields}
\alias{as_bq_field}
\alias{as_bq_fields}
\title{BigQuery field (and fields) class}
\usage{
bq_field(name, type, mode = "NULLABLE", fields = list(), description = NULL)

bq_fields(x)

as_bq_field(x)

as_bq_fields(x)
}
\arguments{
\item{name}{Field name}

\item{type}{Field type}

\item{mode}{Field mode}

\item{fields}{For a field of type "record", a list of sub-fields.}

\item{description}{Field description}

\item{x}{A list of \code{bg_fields}}
}
\description{
\code{bq_field()} and \code{bq_fields()} create; \code{as_bq_field()} and \code{as_bq_fields()}
coerce from lists.
}
\examples{
bq_field("name", "string")

as_bq_fields(list(
  list(name = "name", type = "string"),
  bq_field("age", "integer")
))

# as_bq_fields() can also take a data frame
as_bq_fields(mtcars)
}
