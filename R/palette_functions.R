
#' Function to extract Norad colors as hex codes
#'
#' @param ... Character names of norad_colors
#'

norad_cols <- function(...) {

  norad_colors <- c(
    "green" = "#03542d",
    "lightgreen" = "#b4eac9",
    "darkarmy" = "#656d3a",
    "yellow" = "#e1e11f",
    "darkred" =  "#c47521",
    "purple" =  "#cabdff",
    "blue" = "#091354",
    "pink" = "#ff8ad2",
    "darkpurple" = "#5b0337",
    "lightblue" = "#9acce8",
    "orange" = "#ffa274",
    "brown" = "#752c0c",
    "lightpink" = "#ffd2e7",
    "red" = "#ff570d",
    "lightarmy" = "#c9c7a6"
      )

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
    "green"   = norad_cols("green"),
    "greens"   = norad_cols("lightgreen", "green"),
    "greenyellow"   = norad_cols("green", "yellow"),
    "greenblue" = norad_cols("green", "lightblue"))

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
