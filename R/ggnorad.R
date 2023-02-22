#' Wrapper function to load norad theme
#'
#'@export
#'@name ggnorad

ggnorad <- function(...) {

  showtext::showtext_auto()

  sysfonts::font_add(family = "Arimo",
                     regular = "fonts/Arimo-Regular.ttf",
                     bold = "fonts/Arimo-Bold.ttf",
                     italic = "fonts/Arimo-Italic.ttf",
                     bolditalic = "fonts/Arimo-BoldItalic.ttf")
  sysfonts::font_add(family = "EB Garamond",
                     regular = "fonts/EBGaramond-Regular.ttf",
                     bold = "fonts/EBGaramond-Bold.ttf",
                     italic = "fonts/EBGaramond-Italic.ttf",
                     bolditalic = "fonts/EBGaramond-BoldItalic.ttf")

  ggplot2::update_geom_defaults("path", list(linewidth = 1))

  ggplot2::theme_set(theme_norad())
}
