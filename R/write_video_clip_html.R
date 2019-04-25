# Creates an HTML5 segment that renders a video URL
# 
# Use the results='asis' chunk option in an RMarkdown document

write_video_clip_html <- function(vid_url="https://nyu.databrary.org/slot/9807/-/asset/1/download?inline=true", 
                                  vid_w_pix = 320, vid_h_pix = 240,
                                  show_controls = TRUE, show_link = TRUE) {
  # Check parameters  
  if (!is.character(vid_url)) stop("vid_url must be a string.")
  if (!is.numeric(vid_w_pix)) stop("vid_w_pix must be a number.")
  if (!is.numeric(vid_h_pix)) stop("vid_h_pix must be a number.")
  if (!is.logical(show_controls)) stop("show_controls must be logical.")
  if (!is.logical(show_link)) stop("show_link must be logical")
  
  # Handle show_controls
  if (show_controls) {
    controls_text <- '" controls>\n'
  } else {
    controls_text <- '">\n'
  }
  
  # Handle show_link
  if (show_link) {
    show_link_text <- paste0('<',vid_url,'>\n')
  } else {
    show_link_text <- ''
  }
  
  # Create HTML chunk
  cat('</br>\n',
      '<video width="',
      vid_w_pix,
      '" height="',
      vid_h_pix,
      controls_text,
      '<source src="',
      vid_url,
      '" type="video/mp4">\n',
      '</video>\n',
      '</br>\n',
      show_link_text,
      sep = "")
} 
