#' Wrapper function to load norad theme
#'
#'@export
#'@name ggnorad

ggnorad <- function(...) {

  showtext::showtext_auto()

  sysfonts::font_add(family = "Norad Sans",
                     regular = "fonts/NoradSans-Regular.otf",
                     bold = "fonts/NoradSans-Bold.otf",
                     italic = "fonts/NoradSans-Italic.otf",
                     bolditalic = "fonts/NoradSans-BoldItalic.otf")
  sysfonts::font_add(family = "Norad Serif",
                     regular = "fonts/NoradSerif-Regular.otf",
                     bold = "fonts/NoradSerif-Bold.otf",
                     italic = "fonts/NoradSerif-Italic.otf",
                     bolditalic = "fonts/NoradSerif-BoldItalic.otf")
  ggplot2::update_geom_defaults("path", list(linewidth = 1))

  ggplot2::theme_set(theme_norad())
}
