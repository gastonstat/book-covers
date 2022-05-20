library(png)
img <- readPNG("plspm-logo.png")

# GOOD ONE!!!
png("cover-plspm.png", width = 2600, height = 3100,
    pointsize = 30)
op = par(bg = "#3D63A9")
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))

rasterImage(img, xleft = -0.5, ybottom = -0.65, xright = 0.5, ytop = -0.05)

#axis(side = 1)
#axis(side = 2)
text(0, 0.85, "Partial Least Squares", col = "white", 
     cex = 7, family = "sans")
text(0, 0.65, "Path Modeling with R", col = "white", 
     cex = 7, family = "sans")
segments(-0.9, 0.50, 0.9, 0.50, col = "#F95656", lwd = 15)
text(0, 0.25, "A hands-on introduction to \nPLS Path Modeling \nwith the R package plspm", 
     col = "white", 
     cex = 4, family = "sans")

rect(xleft = -1.5, ybottom = -1.1, xright = 1.5, ytop = -0.8, 
     col = "#F95656", xpd = TRUE)
text(0, -0.95, "Gaston Sanchez", col = "#3D63A9", 
     cex = 7, family = "serif")
par(op)
dev.off()


# bluish background = #3D63A9
# tomato color = #F95656
# whitish color = #efefef


