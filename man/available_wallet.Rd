% Generated by roxygen2 (4.0.1): do not edit by hand
\name{available_wallet}
\alias{available_wallet}
\title{Available wallet}
\usage{
available_wallet(wallet, open_orders, verbose = getOption("Rbitcoin.verbose",
  0))
}
\arguments{
\item{wallet}{data.table object returned by \code{market.api.process} with \code{action="wallet"} param.}

\item{open_orders}{data.table object returned by \code{market.api.process} with \code{action="open_orders"} param.}

\item{verbose}{integer. Rbitcoin processing messages, print to console if \code{verbose > 0}, each subfunction reduce \code{verbose} by 1. If missing then \code{getOption("Rbitcoin.verbose",0)} is used, by default \code{0}.}
}
\value{
data.table object, the same as wallet but with the appropriate amounts after subtracting the open orders amounts.
}
\description{
Calculates assets available to trade, not on hold by current open orders.
}
\examples{
\dontrun{
wallet <- market.api.process('kraken',c('BTC','EUR'),'wallet', key = '', secret = '')
Sys.sleep(10)
open_orders <- market.api.process('kraken',c('BTC','EUR'),'open_orders', key = '', secret = '')
aw <- available_wallet(wallet, open_orders, verbose = 1)
print(aw)
}
}
\seealso{
\code{\link{market.api.process}}
}

