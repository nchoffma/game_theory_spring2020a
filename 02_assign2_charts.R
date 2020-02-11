
# Setup -------------------------------------------------------------------

figpath <- "assignment_writeups/02_assign/"
library(tidyverse)
theme_set(theme_bw())

# Problem 4 ---------------------------------------------------------------

# feasible payoffs
payoffs <- data.frame(
  x = c(0, 3, 4, 0, 0),
  y = c(0, 0, 4, 3, 0)
)

ggplot(payoffs, aes(x, y)) + 
  geom_path() + 
  geom_point() + 
  geom_polygon(fill = "forestgreen", alpha = 0.3) + 
  coord_cartesian(xlim = c(0, 4.8), ylim = c(0, 4.8)) +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0) +
  labs(
    title = "Feasible Payoffs",
    x = expression(u[1]),
    y = expression(u[2])
  )

ggsave(paste0(figpath, "q4_feas.png"))

# feasible + indiv rational
indiv_rational <- data.frame(
  x = c(1, 3.25, 4, 1, 1),
  y = c(1, 1, 4, 3.25, 1)
)

ggplot(payoffs, aes(x, y)) + 
  geom_point() + 
  geom_path() + 
  geom_path(data = indiv_rational, linetype = "dashed") + 
  geom_polygon(data = indiv_rational, fill = "red", alpha = 0.4) + 
  coord_cartesian(xlim = c(0, 4.8), ylim = c(0, 4.8)) +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0) +
  labs(
    title = "Feasible and Individually Rational Payoffs",
    x = expression(u[1]),
    y = expression(u[2])
  )

ggsave(paste0(figpath, "q4_feas_ir.png"))

# Problem 5 ---------------------------------------------------------------

# Feasible (slightly different approach)
# USE THIS from now on
payoffs <- data.frame(
  x = c(0, 1, 4, 5, 0),
  y = c(0, 5, 4, 1, 0)
)

ggplot(payoffs, aes(x, y)) + 
  geom_point() + 
  geom_path() + 
  geom_polygon(fill = "forestgreen", alpha = 0.4) + 
  labs(
    title = "Feasible Payoffs",
    x = expression(u[1]),
    y = expression(u[2])
  )

ggsave(paste0(figpath, "q5_feas.png"))

# Feasible and indiv rational
indiv_rational <- data.frame(
  x = c(1, 1, 4, 5, 1),
  y = c(1, 5, 4, 1, 1)
)

ggplot(payoffs, aes(x, y)) + 
  geom_point() + 
  geom_path() + 
  geom_path(data = indiv_rational, linetype = "dashed") + 
  geom_polygon(data = indiv_rational, 
               fill = "red", alpha = 0.4) + 
  labs(
    title = "Feasible and Individually Rational Payoffs",
    x = expression(u[1]),
    y = expression(u[2])
  )

ggsave(paste0(figpath, "q5_feas_ir.png"))
