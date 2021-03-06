% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspect.R
\name{inspect}
\alias{inspect}
\title{Investigate MER disaggs}
\usage{
inspect(df, ind, group_var = c("standardizeddisaggregate"), disagg = NULL,
  pd = fy2017apr, ou = NULL, agency = NULL, nd = NULL,
  order_on = NULL, clean = TRUE)
}
\arguments{
\item{df}{data frame to inspect}

\item{ind}{MER indicator(s) to aggregate into table}

\item{group_var}{row variables in the table (aggregated up to), default = standardizeddisaggregate; must be written in list form c()}

\item{disagg}{standardized disaggregate to filter on}

\item{pd}{period(s) to look at}

\item{ou}{operating unit (filter)}

\item{agency}{funding agency to (filter)}

\item{nd}{numerator (N) or denominator (D) (filter)}

\item{order_on}{what variable to sort on (descending)}

\item{clean}{knitr table (TRUE) or tibble (FALSE) - set clean = FALSE if creating a data frame}
}
\value{
aggregated data table
}
\description{
Investigate MER disaggs
}
\examples{
#inspect TX_CURR disaggs
df_mer \%>\%
  inspect("TX_CURR")
#inspect TX_CURR by funding agency in Kenya
df_mer \%>\%
inspect("TX_CURR", group_var = c("fundingagency"), disagg = "MostCompleteAgeDisagg", pd = c(fy2016apr, fy2017apr), order_on = fy2017apr, ou = "Kenya")

}
