# GOOD ONE!!!
library(png)
img <- readPNG("random-forest.png")

png("cover-csl.png", width = 2600, height = 3100,
    pointsize = 30)
op = par(bg = "white", mar = rep(0, 4))
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))

rasterImage(img, xleft = -0.7, ybottom = -0.65, xright = 0.7, ytop = 0.45)

rect(xleft = -1.5, ybottom = 1.2, xright = 1.5, ytop = 0.93, 
     col = "#3c78d8", xpd = TRUE)
rect(xleft = -1.5, ybottom = 0.48, xright = 1.5, ytop = 0.9, 
     col = "#ff6633", xpd = TRUE)

text(0, 0.75, "All Models Are Wrong", 
     col = "white", cex = 5.5, family = "sans")

text(0, 0.6, "Concepts of Statistical Learning", 
     col = "white", cex = 5.5, family = "sans")

rect(xleft = -1.5, ybottom = -0.92, xright = 1.5, ytop = -0.68, 
     col = "orange", xpd = TRUE)
rect(xleft = -1.5, ybottom = -0.96, xright = 1.5, ytop = -0.92, 
     col = "white", xpd = TRUE)
rect(xleft = -1.5, ybottom = -1.2, xright = 1.5, ytop = -0.95, 
     col = "#3c78d8", xpd = TRUE)

text(0, -0.8, "Gaston Sanchez \t\tEthan Marzban", 
     col = "white", cex = 4.5, family = "sans")
par(op)
dev.off()


