# render_site

# source helper scripts and functions
#source(file = list.files("R", pattern = "\\.R$", full.names = TRUE))
source("R/write_video_clip_html.R")
source("R/write_video_clip_html_SJ.R")

rmarkdown::render_site()
