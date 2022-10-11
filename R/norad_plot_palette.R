#' Norad colors
norad_colors <- c(
  "green" = "#23716D",
  "blue" = "#437793",
  "red" = "#9E5B4C",
  "yellow" = "#C1872E",
  "lightgreen" = "#8AACA1",
  "lightblue" = "#86AAC2",
  "lightred" = "#C6836D",
  "lightyellow" = "#E0B052",
  "black" = "#353533",
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
  "main"  = norad_cols("green", "blue", "red", "yellow"),
  "full"  = norad_cols())

#' Return function to interpolate a Norad color palette
#'
#' @param palette Character name of palette in norad_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'

norad_pal <- function(palette = "main", reverse = FALSE, ...) {
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

scale_color_norad <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
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

scale_fill_norad <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- norad_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("norad_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
