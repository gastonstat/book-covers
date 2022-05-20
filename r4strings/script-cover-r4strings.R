

# population size
size <- 250
# number of yarns
n <- 30
# generations
gens <- 50
# letters and symbols
punc <- c(".", ",", ":", ";", "/", "|", "(", "\\)", "[", "]", "{", 
          "\\}", "\\#", "$", "%", "^", "&", "+", "-", "?", "<", ">", "*")
strs <- c(letters, LETTERS, 0:9, punc)
# colors
reds <- hsv(h = 0, s = 1, v = 1, alpha = runif(n, 0.2, 0.9))

# red1 <- hsv(h = 0.4, s = 1, v = 1, alpha = runif(n, 0.2, 0.9))
# red2 <- hsv(h = 0.6, s = 1, v = 1, alpha = runif(n, 0.2, 0.9))
# red3 <- hsv(h = 0.0, s = 1, v = 1, alpha = runif(n, 0.2, 0.9))
# reds <- sample(c(red1, red2, red3), size = n)


png("cover-r4strings.png", width = 2600, height = 3100)
set.seed(12345)
op <- par(bty = "n", mar = c(0, 0, 0, 0), bg = 'white')
# plot
plot(1:gens, rep(0, gens), type = 'n', 
     ylim = c(-0.25, 0.95), axes = FALSE)
for (j in 1:n)
{
  # probability
  p <- 0.5
  freq <- c(rep(p, 10), rep(NA, gens - 10))
  for (i in 11:gens)
  {
    # binomial number
    aux <- rbinom(1, size, p)
    p <- aux / size
    freq[i] <- p
  }
  #lwds <- sample(seq(0.5, 2, by = 0.15), 1)
  cexs <- sample(seq(0.5, 2, by = 0.1), 1) * 5
  # use loess
  temp <- lowess(freq ~ 1:gens)
  #lines(temp$x, temp$y, col = reds[j], lwd = lwds)
  aux_strs <- sample(strs, size = length(temp$x), replace = TRUE)
  text(temp$x, temp$y, labels = aux_strs, family = "mono",
       col = reds[j], cex = cexs)
}
# signature
# text(3, 0.01, "Handling Strings\nWith R", col = "gray10", 
#      cex = 16, family = "mono", pos = 4, font = 2)
text(3, 0.03, "Handling Strings", col = "gray10", 
     cex = 16, family = "mono", pos = 4, font = 2)
text(3, -0.058, "With", col = "gray10", 
     cex = 16, family = "mono", pos = 4, font = 2)
text(14.7, -0.056, "R", col = "#FF0000", 
     cex = 20, family = "mono", pos = 4, font = 2)
text(3, -0.18, "Gaston Sanchez", col = "gray10", 
     cex = 10, family = "mono", pos = 4, font = 2)
# reset par
par(op)
dev.off()
