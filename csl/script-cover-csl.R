# GOOD ONE!!!
library(png)
img <- readPNG("random-forest.png")

png("cover-csl.png", width = 2600, height = 3100, pointsize = 30)
op = par(bg = "white", mar = rep(0, 4))
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))

# sidebar
rect(-1.1, -1.1, -0.85, 1.1, col = "#ff6633")

# title
text(-0.7, 0.8, "Concepts of",
     col = "#ff6633", cex = 7, family = "sans", pos = 4)
text(-0.7, 0.6, "Statistical Learning", font = 2,
     col = "#ff6633", cex = 7, family = "sans", pos = 4)

# logo
rasterImage(img, xleft = -0.6, ybottom = -0.6, xright = 0.8, ytop = 0.5)

# authors
text(-0.6, -0.8, "Gaston\nSanchez", 
     col = "black", cex = 4, family = "sans", pos = 4)

text(0.2, -0.8, "Ethan\nMarzban", 
     col = "black", cex = 4, family = "sans", pos = 4)

par(op)
dev.off()
