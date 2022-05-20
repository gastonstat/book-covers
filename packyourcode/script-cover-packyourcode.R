

# GOOD ONE!!!
library(png)
img <- readPNG("pyc-cover-logo.png")

png("cover-pyc.png", width = 2600, height = 3100,
    pointsize = 30)
op = par(bg = "white", mar = rep(0, 4))
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))

rasterImage(img, -0.75, -0.25, 0.15, 0.75)

rect(-1.1, -1.1, -0.85, 1.1, col = "#126DBF")

# original brown #BA9316

text(0.10, 0.7, "Pack", col = "#B38805", 
     cex = 10, family = "sans", pos = 4)
text(0.10, 0.5, "You", col = "gray20", 
     cex = 10, family = "sans", pos = 4)
text(0.55, 0.5, "R", col = "#126DBF", font = 2, 
     cex = 10, family = "sans", pos = 4)
text(0.10, 0.3, "Code", col = "gray20", 
     cex = 10, family = "mono", pos = 4)

text(-0.70, -0.35, "How to create a basic R package", 
     col = "gray10", cex = 3.5, family = "sans", pos = 4, font = 3)
text(-0.70, -0.46, "with S3 Classes in RStudio", 
     col = "gray10", cex = 3.5, family = "sans", pos = 4, font = 3)

text(-0.70, -0.85, "Gaston Sanchez", col = "gray20", 
     cex = 5, family = "sans", pos = 4)
par(op)
dev.off()


