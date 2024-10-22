library(readr)

#OREGUNTA 1

#variables aleatorias
valA = runif(5000)
valB = runif(5000)
valC = runif(5000)

#errores aleatorios
error1 = rnorm(5000, 0, 1)
error2 = rnorm(5000, 0, 1)
error3 = rnorm(5000, 0, 1)

#funciones inversas de las acumuladas
xpA = 10/((-log(valA))^(1/10))
xpB = 30*valB
xpC = -10*log(1-valC)

#calcular los valores de Y1, Y2, Y3
y1 = pmax(12, xpA) + error1
y2 = pmax(5, xpB + error2)
y3 = pmin(10, xpC + 5) + error3

#calcular las funciones densidad empiricas
fy1 = density(y1)
fy2 = density(y2)
fy3 = density(y3)

#Grafico funcion densidad Y1
plot(fy1, col = 1, lwd = 2,
     main = "", xlab = "x", ylab = "Y1")

#Valor esperado Y1
EY1 = sum(fy1$x * fy1$y) * diff(fy1$x[1:2])

#Grafico funcion densidad Y2
plot(fy2, col = 1, lwd = 2,
     main = "", xlab = "x", ylab = "Y2")

#Valor esperado Y1
EY2 = sum(fy2$x * fy2$y) * diff(fy2$x[1:2])

#Grafico funcion densidad Y3
plot(fy3, col = 1, lwd = 2,
     main = "", xlab = "x", ylab = "Y3")

#Valor esperado Y1
EY3 = sum(fy3$x * fy3$y) * diff(fy3$x[1:2])

# PREGUNTA 2

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

# PREGUNTA 3

#Elegir el mayor tiempo
mayorY = pmax(y1, y2, y3)
#Promedio
mean(mayorY)
#Desviacion estandar
sd(mayorY)

#cuartiles Y
quantile(mayorY, 0.25)
quantile(mayorY, 0.5)
quantile(mayorY, 0.75)
quantile(mayorY, 1)

#Grafico densidad empirico Y
plot(density(mayorY), col = 1, lwd = 2,
     main = "", xlab = "x", ylab = "Y")

# PREGUNTA 4
esperas = read_csv("esperas.csv")
head(esperas)
#Secuencias de cuantiles
quantile(esperas$muestra1, seq(0.02,0.98,0.02))
quantile(esperas$muestra2, seq(0.02,0.98,0.02))
quantile(Y, seq(0.02,0.98,0.02))
quantile(y1, seq(0.02,0.98,0.02))
quantile(y2, seq(0.02,0.98,0.02))
quantile(y3, seq(0.02,0.98,0.02))

