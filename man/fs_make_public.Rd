% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fs_make_public.R
\name{fs_make_public}
\alias{fs_make_public}
\title{Make an article public (for private or draft articles)}
\usage{
fs_make_public(article_id, session = fs_get_auth())
}
\arguments{
\item{article_id}{the id number of the article}

\item{session}{(optional) the authentication credentials from \code{\link{fs_auth}}.}
}
\value{
output of PUT request (invisibly)
}
\description{
Make an article public (for private or draft articles)
}
\details{
This function will make a draft or private article public, assigning it a DOI and making it permanently available through Figshare. If you use \code{\link{fs_upload}} to add new files to an existing public deposit, you must then use \code{fs_make_public} for those changes to be made in the public version of the repository.
}
\note{
NOTE: Public articles are assigned DOIs and cannot be deleted or made private once declared public! Public articles do not count against your quota space.
}
\examples{
\dontrun{
fs_make_public(123)
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
