% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/indexing.R
\name{aphylo-index}
\alias{aphylo-index}
\alias{[.aphylo}
\alias{[<-.aphylo}
\title{Indexing aphylo objects}
\usage{
\method{[}{aphylo}(x, i, j, drop = FALSE)

\method{[}{aphylo}(x, i, j) <- value
}
\arguments{
\item{x}{An object of class \link{aphylo}.}

\item{i, j}{Integer vector. Indices of genes or functions.}

\item{drop}{Logical scalar. When \code{TRUE}, the function returns a matrix of
annotations. Otherwise an object of class \code{aphylo}.}

\item{value}{Integer vector. Replacing values, can be either \code{c(0, 1, 9, NA)}.}
}
\value{
\itemize{
\item When indexing with \code{i}: A data frame with the annotations of the
selected genes.
\item When only indexing with \code{j} (\code{drop = FALSE}): An \code{aphylo} object with the selected sets of
annotations.
\item When only indexing with \code{j} (\code{drop = TRUE}): A data.frame with the selected
annotations.
\item When indexing on both \code{i} and \code{j}: A data.frame with the selected genes and annotations.
}
}
\description{
Indexing aphylo objects
}
\details{
The subsetting method allows selecting one or more annotations from
the \link{aphylo} object. Whenever \code{i} is specified, then aphylo returns the corresponding
annotations.
}
\examples{
set.seed(12312)
atree <- raphylo(50, P = 4)
atree[1:10,]
atree[,2:3]
atree[, 2:3, drop = TRUE]
atree[1:10, 2:3]


}
