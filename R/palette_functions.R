
#' Function to extract Norad colors as hex codes
#'
#' @param ... Character names of norad_colors
#'

norad_cols <- function(...) {

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

  cols <- c(...)

  if (is.null(cols))
    return (norad_colors)

  norad_colors[cols]
}


#' Function to access Norad palettes
#'
#' @param palette Character name of palette in norad_palettes
#' @param ... Additional arguments
#'

norad_pal <- function(palette = "main", ...) {

  norad_palettes <- list(
    "main"  = norad_cols(),
    "green"   = norad_cols("lightgreen"),
    "greens"   = norad_cols("lightgreen", "green"),
    "yellow"   = norad_cols("lightyellow"),
    "yellows"   = norad_cols("lightyellow", "yellow"),
    "blue"   = norad_cols("lightblue"),
    "blues"   = norad_cols("lightblue", "blue"),
    "red"   = norad_cols("lightred"),
    "reds"   = norad_cols("lightred", "red"),
    "greenyellow"   = norad_cols("green", "yellow"),
    "greenyellowlight"   = norad_cols("lightgreen", "lightyellow"),
    "blueyellow"   = norad_cols("blue", "yellow"),
    "blueyellowlight"   = norad_cols("lightblue", "lightyellow"),
    "light" = norad_cols("lightgreen", "lightyellow", "lightblue", "lightred", "grey"),
    "dark" = norad_cols("green", "yellow", "blue", "red", "black"))

  norad_palettes[[palette]]

}


#' Helper function for discrete color scales
#'
#' @param palette Character name of palette in norad_palettes
#' @param direction Integer indicating whether the palette should be reversed
#'

palette_gen <- function(palette = "main", direction = 1) {

  function(n) {

    if (n > length(norad_pal(palette)))
      warning("Not enough colors in this palette!")

    else {

      all_colors <- norad_pal(palette)

      all_colors <- unname(unlist(all_colors))

      all_colors <- if (direction >= 0) all_colors else rev(all_colors)

      color_list <- all_colors[1:n]

    }
  }
}

#' Helper function for continuous color scales
#'
#' @param palette Character name of palette in norad_palettes
#' @param direction Integer indicating whether the palette should be reversed
#' @param ... Additional arguments passed to colorRampPalette()
#'

palette_gen_c <- function(palette = "main", direction = 1, ...) {

  pal <- norad_pal(palette)

  pal <- if (direction >= 0) pal else rev(pal)

  grDevices::colorRampPalette(pal, ...)

}


#' Discrete color scale constructor for Norad colors
#'
#' @param palette Character name of palette in norad_palettes
#' @param direction Integer indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale()
#'

scale_color_norad <- function(palette = "main", direction = 1, ...) {
  ggplot2::discrete_scale(
    "color", "norad",
    palette_gen(palette, direction),
    ...
  )
}


#' Discrete fill scale constructor for Norad colors
#'
#' @param palette Character name of palette in norad_palettes
#' @param direction Integer indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale()
#'

scale_fill_norad <- function(palette = "main", direction = 1, ...) {
  ggplot2::discrete_scale(
    "fill", "norad",
    palette_gen(palette, direction),
    ...
  )
}

#' Continious color scale constructor for Norad colors
#'
#' @param palette Character name of palette in norad_palettes
#' @param direction Integer indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale()
#'

scale_color_norad_c <- function(palette = "greenyellow", direction = 1, ...) {

  pal <- palette_gen_c(palette = palette, direction = direction)

  ggplot2::scale_color_gradientn(colors = pal(256), ...)

}

#' Continious fill scale constructor for Norad colors
#'
#' @param palette Character name of palette in norad_palettes
#' @param direction Integer indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale()
#'

scale_fill_norad_c <- function(palette = "greenyellow", direction = 1, ...) {

  pal <- palette_gen_c(palette = palette, direction = direction)

  ggplot2::scale_fill_gradientn(colors = pal(256), ...)

}
