% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-management.R
\name{aphylo-class}
\alias{aphylo-class}
\alias{aphylo}
\alias{new_aphylo}
\alias{new_aphylo.phylo}
\title{Annotated Phylogenetic Tree}
\usage{
new_aphylo(tree, tip.annotation, ...)

\method{new_aphylo}{phylo}(
  tree,
  tip.annotation,
  node.annotation = NULL,
  tip.type = NULL,
  node.type = NULL,
  ...
)
}
\arguments{
\item{tree}{An object of class \link[ape:read.tree]{phylo}}

\item{tip.annotation, node.annotation}{Annotation data. See \linkS4class{aphylo}.}

\item{...}{Further argmuents passed to the method.}

\item{tip.type, node.type}{Integer vectors with values {0,1}. 0 denotes duplication node and 1 speciation node. This is used in \link{LogLike}.}
}
\value{
A list of class \code{aphylo} with the following elements:
\item{tree}{An object of class \link[ape:read.tree]{phylo}.}
\item{tip.annotation}{An integer matrix. Tip (leaf) nodes annotations.}
\item{node.annotation}{An integer matrix (optional). Internal nodes
annotations.}
\item{offspring}{A list. List of offspring of each node.}
\item{pseq}{Integer vector. The pruning sequence (postorder).}
\item{reduced_pseq}{Integer vector. The reduced version of \code{pseq}.}
\item{Ntips.annotated}{Integer. Number of tips with annotations.}
\item{tip.type}{Binary of length \code{\link[=Ntip]{Ntip()}}. 0 means duplication and 1 speciation.}
\item{tip.type}{Binary of length \code{\link[=Nnode]{Nnode()}}. 0 means duplication and 1 speciation.}
}
\description{
The \code{aphylo} class tree holds both the tree structure represented as a
partially ordered phylogenetic tree, and node annotations. While annotations
are included for both leafs and inner nodes, the algorithms included in this
package only uses the leaf annotations.
}
\examples{
# A simple example ----------------------------------------------------------

data(fakeexperiment)
data(faketree)
ans <- new_aphylo(fakeexperiment[,2:3], tree = as.phylo(faketree))
 
# We can visualize it
plot(ans)
}
\seealso{
Other Data management functions: 
\code{\link{aphylo_from_data_frame}()}

Other aphylo methods: 
\code{\link{aphylo-methods}}
}
\concept{Data management functions}
\concept{aphylo methods}
