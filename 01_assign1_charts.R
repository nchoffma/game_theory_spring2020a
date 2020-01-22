
# Problem 4 ---------------------------------------------------------------

s <- seq(-1, 1, 0.01)
gamma2 <- sqrt(s)
alphas <- c(-3 / 4, 1 / 4, 2)
cols <- c("red", "forestgreen", "blue")

png("assignment_writeups/plot_4.png")
plot(s, gamma2, type = "l", xlim = c(-0.1, 1), ylim = c(-0.1, 1),
     ylab = "t", main = "Reaction functions")
for (i in 1:length(alphas)){
  lines(s, s / alphas[i], col = cols[i])
}
abline(h = 0)
abline(v = 0)
dev.off()