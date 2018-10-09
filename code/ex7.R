packrat::status()
packrat::restore()
#packrat::snapshot()

library(readxl)

exercicio7 <- read_excel("data/exercicio7.xls")

png(filename = "graphics/ex7.png", width = 500, height = 500)
barplot(exercicio7$Atendimento, names=exercicio7$Áreas, col="brown1")
dev.off()
