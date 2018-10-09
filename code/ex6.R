packrat::status()
packrat::restore()
#packrat::snapshot()

library(readxl)
library(qcc)

exercicio6 <- read_excel("data/exercicio6.xls")

png(filename = "graphics/ex6.png", width = 500, height = 500)
pareto.chart(exercicio6$`Nº pessoas`, names=exercicio6$Qualidade)
dev.off()
