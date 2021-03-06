% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/display_ent.R
\name{display_ent}
\alias{display_ent}
\title{Visualize entities in text parsed with Spacy.}
\usage{
display_ent(x, deco = "red")
}
\arguments{
\item{x}{A spacyr_parsed object}

\item{deco}{A crayon style, given as a character string}
}
\value{
A character string with styled tokens
}
\description{
Visualize entities in text parsed with Spacy.
}
\details{
x must include the "whitespace_" attribute. Therefore, \code{spacy_parse}
  should be run with the \code{additional_attributes} argument:
  \code{spacy_parse(x, ..., additional_attributes = "whitespace_")}. This
  function is designed to be called for its side effect, which outputs
  a styled character vector to the terminal.
}
\examples{
\dontrun{
txt <- "Kenneth Benoit is currently Professor of Computational Social
Science in the Department of Methodology at the London School of
Economics and Political Science. He has previously held positions in
the Department of Political Science at Trinity College Dublin and at
the Central European University (Budapest)."
txt <- gsub("\\n", " ", txt)
parsed <- spacyr::spacy_parse(txt, lemma = FALSE, additional_attributes = "whitespace_")
display_ent(parsed, deco = "yellow")
}
}
