% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table_constructor.R
\name{table_constructor}
\alias{table_constructor}
\title{Use attributes to construct a table with column and row headers.}
\usage{
table_constructor(
  df,
  col_header_df,
  row_header_df,
  data_vars,
  table_name = NULL,
  table_format
)
}
\arguments{
\item{df}{a data frame}

\item{col_header_df}{col header information}

\item{row_header_df}{row header information}

\item{data_vars}{cell variable}

\item{table_name}{name of the table}

\item{table_format}{formatting o the table}
}
\value{
mmtable
}
\description{
Use attributes to construct a table with column and row headers.
}
