% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fs_add_tags.R
\name{fs_add_tags}
\alias{fs_add_tags}
\title{Add a tag to an article}
\usage{
fs_add_tags(article_id, tag, session = fs_get_auth(), debug = FALSE)
}
\arguments{
\item{article_id}{the id number of the article to create}

\item{tag}{name of the tag to add (or list of tags)}

\item{session}{the authentication credentials from \code{\link{fs_auth}}}
}
\value{
output of PUT request (invisibly)
}
\description{
Add a tag to an article
}
\examples{
\dontrun{
 fs_add_tag(138, "phylogenetics") 
}
}
\references{
\url{https://docs.figshare.com}
}
\seealso{
\code{\link{fs_auth}}
}
\author{
Carl Boettiger \email{cboettig@gmail.com}
}
\keyword{internal}
