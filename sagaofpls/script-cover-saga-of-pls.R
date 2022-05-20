bv = runif(100, 0.53, 0.56)
blues = hsv(h = 0.53, s = 1, v = 0.8)

gv = runif(100, 0.20, 0.25)
greens = hsv(h = 0.20, s = 1, v = 1)

ov = runif(100, 0.08, 0.13)
oranges = hsv(h = 0.13, s = 1, v = 0.95)

# GOOD ONE!!!
# 2600 x 3100 dimensions for cover image in my website
#png("cover-saga-of-pls.png", width = 2600, height = 3100, pointsize = 30)

# 2550 x 3300 dimensions for cover image in leanpub
png("cover-saga-of-pls.png", width = 2550, height = 3300, pointsize = 30)
op = par(bg = blues)
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
#axis(side = 1)
#axis(side = 2)
rect(xleft = -1.5, ybottom = -0.95, xright = 1.5, ytop = -0.65, 
     col = greens, xpd = TRUE)
text(0, 0.65, "The Saga", col = "white", 
     cex = 12, family = "sans")
text(-0.36, 0.4, "of", col = "white", 
     cex = 12, family = "sans")
text(0.18, 0.4, "PLS", col = greens, 
     cex = 12, family = "sans", font = 2)
text(0, -0.05, "A historical review of the origins \nand development of \nPartial Least Squares", 
     col = "white", 
     cex = 4, family = "sans")
segments(-0.5, 0.20, 0.5, 0.20, col = greens, lwd = 5)
text(0, -0.8, "Gaston Sanchez", col = blues, 
     cex = 7, family = "serif")
par(op)
dev.off()


# bluish background = #3D63A9
# tomato color = #F95656
# whitish color = #efefef


