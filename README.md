
<!-- README.md is generated from README.Rmd. Please edit that file -->

# noradplot <img src="man/figures/sticker.png" align="right" width="120"/>

## Overview

Norads colour palette and plot style for creating ggplot2 graphics.

- Use `ggnorad()` to add Norad plot style

- Use `scale_*` functions to add norad colour palette

## Examples

``` r

library(ggplot2)
library(noradplot)

ggnorad()

ggplot(mpg, aes(displ, hwy, color = class)) + 
  geom_point() +
  scale_color_norad() +
  labs(title = "This is the title",
       subtitle = "This is the slightly longer subtitle",
       caption = "This is the caption")
```

![](man/figures/README-example-1.png)<!-- -->

## Credits

Based on Simon Jackson’s blog post: Creating corporate colour palettes
for ggplot2, BBC BBC Visual and Data Journalism cookbook for R graphics:
<https://bbc.github.io/rcookbook/> and Meghan Halls blog post Creating
Custom colour palettes for ggplot2:
<https://meghan.rbind.io/blog/2022-10-11-creating-custom-color-palettes-with-ggplot2/>
