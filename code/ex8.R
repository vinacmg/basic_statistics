packrat::status()
packrat::restore()
#packrat::snapshot()

library(readxl)

exercicio8 <- read_excel("data/exercicio8.xls")

#AJUSTANDO FORMATO DOS DADOS 
alturas <- c()
for (col in exercicio8){
  alturas <- c(alturas, col)
}
####

range(alturas)
breaks <- seq(1.55, 1.90, by=0.05)

alturas.cut <- cut(alturas, breaks, right=FALSE)
frequencias = table(alturas.cut)
View(frequencias)

png(filename = "graphics/ex8.png", width = 500, height = 500)
hist(alturas, breaks = breaks, main="Histograma das alturas", ylab='Frequências', xlab="Alturas", col="cornflowerblue")
dev.off()

