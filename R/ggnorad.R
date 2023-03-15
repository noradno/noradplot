#' Wrapper function to load norad theme
#'
#'@param ... Additional arguments
#'@export
#'@name ggnorad

ggnorad <- function(...) {

  showtext::showtext_auto()

  fonts_dir <- system.file("fonts", package = "noradplot")
  sysfonts::font_add(family = "Norad Sans",
                     regular = paste0(fonts_dir, "/NoradSans-Regular.otf"),
                     bold = paste0(fonts_dir, "/NoradSans-Bold.otf"),
                     italic = paste0(fonts_dir, "/NoradSans-Italic.otf"),
                     bolditalic = paste0(fonts_dir, "/NoradSans-BoldItalic.otf"))

  sysfonts::font_add(family = "Norad Serif",
                     regular = paste0(fonts_dir, "/NoradSerif-Regular.otf"),
                     bold = paste0(fonts_dir, "/NoradSerif-Bold.otf"),
                     italic = paste0(fonts_dir, "/NoradSerif-Italic.otf"),
                     bolditalic = paste0(fonts_dir, "/NoradSerif-BoldItalic.otf"))

  ggplot2::update_geom_defaults("path", list(linewidth = 1))

  ggplot2::theme_set(theme_norad())
}
