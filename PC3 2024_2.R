valA = runif(5000)
valB = runif(5000)
valC = runif(5000)

error1 = rnorm(5000, 0, 1)
error2 = rnorm(5000, 0, 1)
error3 = rnorm(5000, 0, 1)

xpA = 10/((-log(valA))^(1/10))
xpB = 30*valB
xpC = -10*log(1-valC)

y1 = pmax(12, xpA) + error1
y2 = pmax(5, xpB + error2)
y3 = pmin(10, xpC + 5) + error3

fy1 = density(y1)
fy2 = density(y2)
fy3 = density(y3)

plot(fy1, col = 1, lwd = 2,
     main = "", xlab = "x", ylab = "Y1")
EY1 = sum(fy1$x * fy1$y) * diff(fy1$x[1:2])

plot(fy2, col = 1, lwd = 2,
     main = "", xlab = "x", ylab = "Y2")
EY2 = sum(fy2$x * fy2$y) * diff(fy2$x[1:2])

plot(fy3, col = 1, lwd = 2,
     main = "", xlab = "x", ylab = "Y3")
EY3 = sum(fy3$x * fy3$y) * diff(fy3$x[1:2])


#cuartiles Q1

quantile(y1, 0.25)
quantile(y1, 0.5)
quantile(y1, 0.75)

#cuartiles Q2
quantile(y2, 0.25)
quantile(y2, 0.5)
quantile(y2, 0.75)

#cuartiles Q3
quantile(y3, 0.25)
quantile(y3, 0.5)
quantile(y3, 0.75)


mayorY = pmax(y1, y2, y3)
mean(mayorY)
sd(mayorY)
#cuartiles Y
quantile(mayorY, 0.25)
quantile(mayorY, 0.5)
quantile(mayorY, 0.75)
quantile(mayorY, 1)
plot(density(mayorY), col = 1, lwd = 2,
     main = "", xlab = "x", ylab = "Y")


