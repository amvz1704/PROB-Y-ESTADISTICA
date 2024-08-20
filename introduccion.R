head(datos_bmi)

datos_bmi$bmi

datos_bmi[,1]

datos_bmi[2]

datos_bmi[2,]

datos_bmi[c(1,4,5),]

datos_bmi[datos_bmi$bmi > 40, ]

datos_bmi[datos_bmi$bmi < 40 & datos_bmi$edad > 50, ]

datosH = datos_bmi[datos_bmi$sexo == "Hombre",]
head(datosH)

summary(datos_bmi$bmi[datos_bmi$sexo == "Hombre"])
summary(datos_bmi$bmi[datos_bmi$sexo == "Mujer"])

#par(mrfow=c(1,2))
hist(datos_bmi$bmi[datos_bmi$sexo == "Hombre"])

hist(datos_bmi$bmi[datos_bmi$sexo == "Mujer"])


a = 1
b = c(1,5,9)
d = c("a","b","c")
e = c(TRUE, TRUE, FALSE)
f = b > 3
g = c(1,2,3,NA,1)
g[3]
g[4]

a = 5
if(a < 0){
  b = 2*a
  print(b)
}else{
  b = 3*a
  print(b)
}

x = c(1,2,3,4,5,6)
y = ifelse(x < 4,0,1)
y


for(i in 1:3) cat("hola","\n")
x <- c(1,2,3,4,5)
y <- NULL
for(i in 1:5) y[i] <- 2*x[i]
y

media <- function(x){
  suma <- sum(x) # suma
  n <- length(x) # número de elementos
  media <- suma/n # calcula media
  media
}
media(datos_bmi$bmi)
media <- function(x){
  suma <- sum(x) # suma
  n <- length(x) # número de elementos
  media <- suma/n # calcula media
  return(list(media=media,suma=suma,n=n))
}
media(datos_bmi$bmi)

medias <- function(x,y){
  suma.x <- sum(x) # suma de x
  n.x <- length(x) # número de elementos de x
  media.x <- suma.x/n.x # calcula media de x
  suma.y <- sum(y) # suma de y
  n.y <- length(y) # número de elementos de y
  media.y <- suma.y/n.y # calcula media de y
  return(list(media.x=media.x,media.y=media.y))
}
medias(datos_bmi$bmi,datos_bmi$edad)
