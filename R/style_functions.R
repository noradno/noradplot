
#' Function for using Norad's theme in ggplot2 graphics
#'
#'@export


theme_norad <- function() {
  sans <- "Norad Sans"
  serif <- "Norad Serif"

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
        margin = ggplot2::margin(t = 5, b = 15)),
      # Plot caption
      plot.caption.position = "plot",
      plot.caption = ggplot2::element_text(
        family = serif,
        size = 12,
        hjust = 0,
        margin = ggplot2::margin(t = 10)),
      # Legend
      legend.text = ggplot2::element_text(
        size = 12),
      legend.title = ggplot2::element_text(
        size = 12),
      legend.position = "right",
      legend.justification = "top",
      legend.margin = ggplot2::margin(r = 30),
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
      axis.title.y = ggplot2::element_text(margin = ggplot2::margin(r = 5)),
      axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 10)),
      axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = 5)),
      axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 10))
    )
}

#' Function for using Norad's theme in ggplot2 graphics
#'
#'@export

theme_norad_big_light_1 <- function() {
  sans <- "Norad Sans"
  serif <- "Norad Serif"
  display <- "Norad Display"

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
        family = display,
        face = "bold",
        size = 60,
        hjust = 0.5,
        margin = ggplot2::margin(t = 20, b = 20),
        color = norad_cols("green")
      ),
      plot.subtitle = ggplot2::element_text(
        family = serif,
        face = "italic",
        size = 30,
        hjust = 0.5,
        margin = ggplot2::margin(t = 0, b = 70),
        color = norad_cols("green")
      ),
      # Plot caption
      plot.caption.position = "plot",
      plot.caption = ggplot2::element_text(
        family = serif,
        size = 20,
        hjust = 0,
        margin = ggplot2::margin(t = 10)),
      # Legend
      legend.text = ggplot2::element_text(
        size = 12),
      legend.title = ggplot2::element_text(
        size = 12),
      legend.position = "right",
      legend.justification = "top",
      legend.margin = ggplot2::margin(r = 30),
      legend.text.align = 0,
      legend.background = ggplot2::element_blank(),
      # Axes
      axis.text = ggplot2::element_text(
        size = 20,
        color = "#1b3a1c"
      ),
      axis.title = ggplot2::element_blank(),
      axis.title.y = ggplot2::element_text(margin = ggplot2::margin(r = 5)),
      axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 10)),
      axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = 15)),
      axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 20)),
      axis.line = ggplot2::element_line(color = "#1b3a1c"),
      axis.ticks = ggplot2::element_blank(),
      # Plot and panel background
      plot.background = ggplot2::element_rect(fill = "#dfefd4"),
      panel.background = ggplot2::element_blank()
    )
}

#' Function for using Norad's theme in ggplot2 graphics
#'
#'@export

theme_norad_big_dark <- function() {
  sans <- "Norad Sans"
  serif <- "Norad Serif"
  display <- "Norad Display"

  theme_norad_big_light_1() +
    ggplot2::theme(
      plot.background = ggplot2::element_rect(fill = "#1b3a1c"),
      panel.background = ggplot2::element_blank(),
      plot.title = ggplot2::element_text(color = norad_cols("lightgreen")),
      plot.subtitle = ggplot2::element_text(color = norad_cols("orange")),
      axis.text = ggplot2::element_text(
        size = 20,
        color = norad_cols("lightgreen")
      ),
      axis.line = ggplot2::element_line(color = norad_cols("lightgreen"))
    )
}

#' Function for using Norad's theme in ggplot2 graphics
#'
#'@export

theme_norad_big_light_2 <- function() {
  sans <- "Norad Sans"
  serif <- "Norad Serif"
  display <- "Norad Display"

  theme_norad_big_light_1() +
    ggplot2::theme(
      plot.background = ggplot2::element_rect(fill = "#f7e0cf"),
      panel.background = ggplot2::element_blank(),
      plot.title = ggplot2::element_text(color = norad_cols("darkgreen")),
      plot.subtitle = ggplot2::element_text(color = norad_cols("darkgreen")),
      axis.text = ggplot2::element_text(
        size = 20,
        color = norad_cols("darkgreen")
      ),
      axis.line = ggplot2::element_line(color = norad_cols("darkgreen"))
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
