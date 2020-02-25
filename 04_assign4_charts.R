
# Question 1 --------------------------------------------------------------

e <- seq(0, 1, 0.01)
w_h <- rep(1, length(e))
w_l <- w_h - 0.8
ic_l <- 0.2 + e / 0.2
ic_h <- 0.2 + e

plot(e, w_h, type = "l", ylim = c(0,1.2))
lines(e, w_l)
lines(e, ic_h)
lines(e, ic_l)

