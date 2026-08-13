################################################################################
# Script Name: save_plot_as_png.R
# Author: slicesofdata
# GitHub: slicesofdata
#
# Purpose: This function script saves a plot as a png using ggplot2::ggsave()
#          and ragg device
#
################################################################################

################################################################################
# Note: When sourcing script files, if you do not want objects
# available in this script, use the source() function along with
# the local = TRUE argument. By default, source() will make
# objects available in the current environment.

################################################################################
# Load necessary libraries/source any function directories
require(here)
require(ggplot2)
require(ragg)

################################################################################
# function to save plot as png

save_plot_as_png <- function(
  user_name = "project",
  file_name,
  plot = get_last_plot(),
  device = ragg::agg_png, # uses ragg device
  scale = 1,
  width = 7, # 1600
  height = 4.5, # 1100
  units = "in", # "px"
  dpi = 300,
  limitsize = TRUE,
  bg = NULL,
  create.dir = TRUE
) {
  ggsave(
    filename = paste0(file_name),
    plot = plot,
    path = here::here("pages", user_name, "figs"),
    device = device,
    scale = scale,
    width = width,
    height = height,
    units = units,
    dpi = dpi,
    limitsize = limitsize,
    bg = bg,
    create.dir = create.dir
  )
}
