# GOOD ONE!!!
library(png)
img <- readPNG("pca_scatterplot_variables1.png")

png("cover-pca4ds.png", width = 2600, height = 3100,
    pointsize = 30)
op = par(bg = "white", mar = rep(0, 4))
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))

rasterImage(img, xleft = -0.68, ybottom = -0.60, xright = 0.72, ytop = 0.5)

#rect(xleft = -1.5, ybottom = 0.48, xright = 1.5, ytop = 0.9, 
#     col = "#3c78d8", xpd = TRUE)

text(0, 0.8, "Principal Components Analysis", 
     col = "#3c78d8", cex = 5.5, family = "sans")

text(0, 0.65, "for Data Science", 
     col = "#3c78d8", cex = 5.5, family = "sans")

#rect(xleft = -1.5, ybottom = -0.95, xright = 1.5, ytop = -0.65, 
#     col = "orange", xpd = TRUE)

#text(0, -0.8, "Tomas Aluja \t\t\t\t\tAlain Morineau \nGaston Sanchez", 
#     col = "gray20", cex = 4, family = "sans")

text(-0.6, -0.8, "Tomas", col = "gray20", cex = 4, family = "sans")
text(-0.6, -0.91, "Aluja", col = "gray20", cex = 4, family = "sans")

text(0, -0.8, "Alain", col = "gray20", cex = 4, family = "sans")
text(0, -0.91, "Morineau", col = "gray20", cex = 4, family = "sans")

text(0.6, -0.8, "Gaston", col = "gray20", cex = 4, family = "sans")
text(0.6, -0.91, "Sanchez", col = "gray20", cex = 4, family = "sans")

par(op)
dev.off()


