\name{col2value}
\alias{col2value}
\title{
Transform back colors to values
}
\description{
Transform back colors to values
}
\usage{
col2value(r, g, b, col_fun)
}
\arguments{

  \item{r}{red channel in \code{\link[colorspace]{sRGB}} color space, value should be between 0 and 1.  The \code{r}, \code{g} and \code{b} argumentc can be wrapped into one variable which is either a three-column matrix or a vector of colors.}
  \item{g}{green channel in \code{\link[colorspace]{sRGB}} color space, value should be between 0 and 1.}
  \item{b}{blue channel in \code{\link[colorspace]{sRGB}} color space, value should be between 0 and 1.}
  \item{col_fun}{the color mapping function generated by \code{\link{colorRamp2}}.}

}
\details{
\code{\link{colorRamp2}} transforms values to colors and this function does the reversed job.
Note for some color spaces, it cannot transform back to the original value perfectly.
}
\author{
Zuguang Gu <z.gu@dkfz.de>
}
\examples{
x = seq(0, 1, length = 11)
col_fun = colorRamp2(c(0, 0.5, 1), c("blue", "white", "red"))
col = col_fun(x)
col2value(col, col_fun = col_fun)

col_fun = colorRamp2(c(0, 0.5, 1), c("blue", "white", "red"), space = "sRGB")
col = col_fun(x)
col2value(col, col_fun = col_fun)
}
