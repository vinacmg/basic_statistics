packrat::status()
packrat::restore()
#packrat::snapshot()

library(readxl)

#EXERCICIO 1
exercicio1 <- read_excel("data/exercicio1.xls")

ex1 = exercicio1$`Taxas de juros`
media = mean(ex1)
mediana = median(ex1)
desvio_padrao = sd(ex1)

min = min(ex1)
max = max(ex1)

q1 = quantile(ex1, 0.25)[[1]]
q3 = quantile(ex1, 0.75)[[1]]

png(filename = "graphics/ex1.png", width = 500, height = 500)
boxplot(quantile(ex1), main="Quartiz", col="lightblue")
dev.off()