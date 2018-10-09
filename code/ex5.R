packrat::status()
packrat::restore()
#packrat::snapshot()

library(readxl)

exercicio5 <- read_excel("data/exercicio5.xls")

png(filename = "graphics/ex5.png", width = 500, height = 500)
barplot(exercicio5$`Nº pessoas`, names=exercicio5$Marcas)
dev.off()
