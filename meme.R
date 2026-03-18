library(magick)
library(magrittr)

# read image
img <- image_read("https://storage.googleapis.com/gweb-uniblog-publish-prod/original_images/tenor_1.gif")

# create static meme
meme <- img %>%
  image_annotate("Assignment due tomorrow", size = 40, gravity = "north") %>%
  image_annotate("Me starting today", size = 40, gravity = "south")

# save static meme
meme %>%
  image_write("my_meme.png")

# create animation frames
frame1 <- img %>%
  image_annotate("Assignment due tomorrow", size = 40, gravity = "north")

frame2 <- img %>%
  image_annotate("Me starting today", size = 40, gravity = "south")

frame3 <- img %>%
  image_annotate("Assignment due tomorrow", size = 40, gravity = "north") %>%
  image_annotate("Me starting today", size = 40, gravity = "south")

frame4 <- img %>%
  image_annotate("I should have started earlier", size = 35, gravity = "center")

# combine frames
frames <- c(frame1, frame2, frame3, frame4)

# animate frames
animation <- image_animate(frames, fps = 1)

# save animated meme
animation %>%
  image_write("my_animated_meme.gif")

# notes
# My inspo meme uses a close-up cat image with short text placed at the top.
# The key design elements are the facial expression, the simple background, and the bold meme text.
# I changed the wording in my own meme to reflect how I feel when I leave assignments until the last minute.
# I added animation by creating four frames with different text content and positions.

