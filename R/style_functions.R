#' Function for using Norad's theme in ggplot2 graphics
#'

theme_norad <- function() {
  font <- "sans"

  ggplot2::theme_minimal() +
  ggplot2::theme(
    plot.title = ggplot2::element_text(
      family = font,
      size = 22,
      face = "bold",
      color = "black",
      hjust = 0.5),
    plot.subtitle = ggplot2::element_text(
      family = font,
      size = 12,
      hjust = 0.5),
    plot.caption = ggplot2::element_text(
      family = font,
      size = 10),
    legend.position = "bottom",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    axis.title = ggplot2::element_blank(),
    axis.text = ggplot2::element_text(
      size = 10,
      face = "bold",
      color = "black"
    )
  )
}
