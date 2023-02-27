
#' Function for using Norad's theme in ggplot2 graphics
#'
#'@export
#'@name theme_norad

theme_norad <- function() {
  sans <- "Arimo"
  serif <- "EB Garamond"

  ggplot2::theme_classic() +
    ggplot2::theme(
      # General text
      text = ggplot2::element_text(
        family = sans, # default unless otherwise stated (like in plot.title)
        size = 12
      ),
      # Plot title and subtitle
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(
        family = serif,
        size = 20,
        face = "bold",
        hjust = 0),
      plot.subtitle = ggplot2::element_text(
        size = 14,
        hjust = 0,
        margin = margin(t = 5, b = 5)),
      # Plot caption
      plot.caption.position = "plot",
      plot.caption = ggplot2::element_text(
        size = 12,
        hjust = 0,
        margin = margin(t = 10)),
      # Legend
      legend.text = ggplot2::element_text(
        size = 12),
      legend.title = ggplot2::element_text(
        size = 12),
      legend.position = "right",
      legend.justification = "top",
      legend.margin = margin(r = 30),
      legend.text.align = 0,
      legend.background = ggplot2::element_blank(),
      # Axes
      axis.text = ggplot2::element_text(
        size = 12,
        color = "black"
      ),
      axis.title = ggplot2::element_text(
        size = 12
      ),
      axis.title.y = ggplot2::element_text(margin = margin(r = 5)),
      axis.title.x = ggplot2::element_text(margin = margin(t = 10)),
      axis.text.y = ggplot2::element_text(margin = margin(r = 5)),
      axis.text.x = ggplot2::element_text(margin = margin(t = 10))
    )
}

#' @examples
#' ggplot(mtcars, aes(factor(cyl), mpg)) +
#' geom_bar(aes(fill = factor(cyl)), stat = "identity") +
#'   theme_norad()
#'
#' ggplot(mtcars, aes(factor(cyl), mpg)) +
#' geom_bar(aes(fill = factor(cyl)), stat = "identity") +
#'   theme_norad()
