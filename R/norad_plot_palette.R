#' Norad colors
norad_colors <- c(
  "lightgreen" = "#8AACA1",
  "lightyellow" = "#E0B052",
  "green" = "#23716D",
  "yellow" = "#C1872E",
  "black" = "#353533",
  "lightblue" = "#86AAC2",
  "blue" = "#437793",
  "lightred" = "#C6836D",
  "red" = "#9E5B4C",
  "grey" = "#B1ACA2")

#' Function to extract Norad colors as hex codes
#'
#' @param ... Character names of norad_colors
#'

norad_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (norad_colors)

  norad_colors[cols]
}

#' Combine colors into palettes
norad_palettes <- list(
  "green"   = norad_cols("lightgreen"),
  "greens"   = norad_cols("lightgreen", "green"),
  "yellow"   = norad_cols("lightyellow"),
  "yellows"   = norad_cols("lightyellow", "yellow"),
  "blue"   = norad_cols("lightblue"),
  "blues"   = norad_cols("lightblue", "blues"),
  "red"   = norad_cols("lightred"),
  "reds"   = norad_cols("lightred", "red"),
  "dark"   = norad_cols("black"),
  "darks"   = norad_cols("black", "grey"),

  "pal1"   = norad_cols("lightgreen"),
  "pal2"   = norad_cols("lightgreen", "lightyellow"),
  "pal3"   = norad_cols("lightgreen", "lightyellow", "green"),
  "pal4"   = norad_cols("lightgreen", "lightyellow", "green", "black"),
  "pal5"   = norad_cols("lightgreen", "lightyellow", "green", "yellow", "black"),
  "pal6"   = norad_cols("lightgreen", "lightyellow", "green", "yellow", "lightblue", "black"),
  "pal7"   = norad_cols("lightgreen", "lightyellow", "green", "yellow", "lightblue", "blue", "black"),
  "pal8"   = norad_cols("lightgreen", "lightyellow", "green", "yellow", "lightblue", "blue", "lightred", "black"),
  "pal9"   = norad_cols("lightgreen", "lightyellow", "green", "yellow", "lightblue", "blue", "lightred", "red", "black"),
  "pal10"   = norad_cols("lightgreen", "lightyellow", "green", "yellow", "lightblue", "blue", "lightred", "red", "grey", "black"),

  "full"  = norad_cols())

#' Return function to interpolate a Norad color palette
#'
#' @param palette Character name of palette in norad_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'

norad_pal <- function(palette = "pal10", reverse = FALSE, ...) {
  pal <- norad_palettes[[palette]]

  if (reverse)
    pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}

#' Color scale constructor for Norad colors
#'
#' @param palette Character name of palette in norad_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'

scale_color_norad <- function(palette = "pal10", discrete = TRUE, reverse = FALSE, ...) {
  pal <- norad_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("norad_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for Norad colors
#'
#' @param palette Character name of palette in norad_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'

scale_fill_norad <- function(palette = "pal10", discrete = TRUE, reverse = FALSE, ...) {
  pal <- norad_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("norad_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
