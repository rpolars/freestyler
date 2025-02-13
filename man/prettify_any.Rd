% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ui-styling.R
\name{prettify_any}
\alias{prettify_any}
\title{Prettify R code in current working directory}
\usage{
prettify_any(
  transformers,
  filetype,
  recursive,
  exclude_files,
  exclude_dirs,
  include_roxygen_examples,
  base_indention = 0L,
  dry
)
}
\arguments{
\item{transformers}{A set of transformer functions. This argument is most
conveniently constructed via the \code{style} argument and \code{...}. See
'Examples'.}

\item{filetype}{Vector of file extensions indicating which file types should
be styled. Case is ignored, and the \code{.} is optional, e.g. \code{c(".R", ".Rmd")}, or \code{c("r", "rmd")}. Supported values (after standardization) are:
"r", "rprofile", "rmd", "rmarkdown", "rnw", "qmd". Rmarkdown is treated as
Rmd.}

\item{recursive}{A logical value indicating whether or not files in
subdirectories should be styled as well.}

\item{exclude_files}{Character vector with regular expressions to files
that should be excluded from styling.}

\item{exclude_dirs}{Character vector with directories to exclude
(recursively). Note that the default values were set for consistency with
\code{\link[=style_dir]{style_dir()}} and as these directories are anyways not styled.}

\item{include_roxygen_examples}{Whether or not to style code in roxygen
examples.}

\item{base_indention}{Integer scalar indicating by how many spaces the whole
output text should be indented. Note that this is not the same as splitting
by line and add a \code{base_indention} spaces before the code in the case
multi-line strings are present. See 'Examples'.}

\item{dry}{To indicate whether styler should run in \emph{dry} mode, i.e. refrain
from writing back to files .\code{"on"} and \code{"fail"} both don't write back, the
latter returns an error if the input code is not identical to the result
of styling. "off", the default, writes back if the input and output of
styling are not identical.}
}
\description{
This is a helper function for style_dir.
}
\keyword{internal}
