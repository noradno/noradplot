% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palette_functions.R
\name{scale_fill_norad_binned}
\alias{scale_fill_norad_binned}
\title{Binned fill scale constructor for Norad colors}
\usage{
scale_fill_norad_binned(
  palette = "greens",
  direction = 1,
  breaks = waiver(),
  ...
)
}
\arguments{
\item{palette}{Character name of palette in norad_palettes}

\item{direction}{Integer indicating whether the palette should be reversed}

\item{breaks}{How to break down continuous data into bins. Computed automatically by default.}

\item{...}{Additional arguments passed to ggplot2::scale_fill_steps()}
}
\description{
Binned fill scale constructor for Norad colors
}
