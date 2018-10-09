packrat::status()
packrat::restore()
#packrat::snapshot()

library(readxl)

exercicio9 <- read_excel("data/exercicio9.xls")

salarios = exercicio9$Salários

range(salarios)
breaks <- seq(3, 25, by=2)

salarios.cut <- cut(salarios, breaks, right=FALSE)
frequencias = table(salarios.cut)
View(frequencias)

png(filename = "graphics/ex9.png", width = 500, height = 500)
hist(salarios, breaks = breaks, main="Histograma dos salários", ylab='Frequências', xlab="Alturas", col='violet')
dev.off()