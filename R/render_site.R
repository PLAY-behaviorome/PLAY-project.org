# render_site

# source helper scripts and functions
source(file = list.files("R", pattern = "\\.R$"))

rmarkdown::render_site()