#' Wrapper function to load norad theme
#'
#'@param ... Additional arguments
#'@export
#'@name ggnorad

ggnorad <- function(...) {

  showtext::showtext_auto()

  sysfonts::font_add(family = "Norad Sans",
                     regular = "https://github.com/noradno/noradplot/raw/main/fonts/NoradSans-Regular.otf",
                     bold = "https://github.com/noradno/noradplot/raw/main/fonts/NoradSans-Bold.otf",
                     italic = "https://github.com/noradno/noradplot/raw/main/fonts/NoradSans-Italic.otf",
                     bolditalic = "https://github.com/noradno/noradplot/raw/main/fonts/NoradSans-BoldItalic.otf")
  sysfonts::font_add(family = "Norad Serif",
                     regular = "https://github.com/noradno/noradplot/raw/main/fonts/NoradSerif-Regular.otf",
                     bold = "https://github.com/noradno/noradplot/raw/main/fonts/NoradSerif-Bold.otf",
                     italic = "https://github.com/noradno/noradplot/raw/main/fonts/NoradSerif-Italic.otf",
                     bolditalic = "https://github.com/noradno/noradplot/raw/main/fonts/NoradSerif-BoldItalic.otf")
  ggplot2::update_geom_defaults("path", list(linewidth = 1))

  ggplot2::theme_set(theme_norad())
}
