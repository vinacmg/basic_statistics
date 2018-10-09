packrat::status()
packrat::restore()
#packrat::snapshot()

library(readxl)

exercicio4 <- read_excel("data/exercicio4.xls")

dist_freq <- table(exercicio4)
View(dist_freq)

ex4 <- exercicio4$Salários
#graficos
png(filename = "graphics/ex4.png", width = 500, height = 500)
hist(ex4, main="Histograma das aparições", ylab='Frequências', col="darkorchid1")
dev.off()
