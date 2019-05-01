set.seed(1234)
x <- rnorm(10,10,2)
y <- rnorm(10,15,2)
z <- rnorm(10,80,2)
df <- data_frame(x,y,z)
n <- length(x)
xyz.mod <- lm(z~x+y)
sum_xyz <- summary(xyz.mod)
beta_x <- xyz.mod$coefficients[2]
beta_y <- xyz.mod$coefficients[3]
#rsq <- sum_xyz$r.squared
cor_xy <- cor(x,y)
rsq <- cor_xy^2
deter <- (1*1-cor_xy*cor_xy)
deter_2 <- 1/deter
deter_3 <- -1*cor_xy/deter
se_diff <- sqrt(((1-rsq)/(n-2-1))*(deter_2+deter_2-2*deter_3))
t <- (beta_x-beta_y)/se_diff
t

