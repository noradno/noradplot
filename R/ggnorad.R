#' Wrapper function to load norad theme
#'
#'@param style Plot style. One of "default", "biglight1", "biglight2", "bigdark".
#'@export
#'@name ggnorad

ggnorad <- function(style = "default") {

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

  sysfonts::font_add(family = "Norad Display",
                     regular = paste0(fonts_dir, "/NoradDisplay-Bold.otf"),
                     bold = paste0(fonts_dir, "/NoradDisplay-Bold.otf"),
                     italic = paste0(fonts_dir, "/NoradDisplay-BoldItalic.otf"))

  ggplot2::update_geom_defaults("path", list(linewidth = 1))

  if (style == "default") {
    ggplot2::theme_set(theme_norad())
  } else if (style == "biglight1") {
    ggplot2::theme_set(theme_norad_big_light_1())
  } else if (style == "biglight2") {
    ggplot2::theme_set(theme_norad_big_light_2())
  } else if (style == "bigdark") {
    warning("This style is high contrast. Use additional visual elements with care.")
    ggplot2::theme_set(theme_norad_big_dark())
  }
}
