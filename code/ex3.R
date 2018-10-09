packrat::status()
packrat::restore()
#packrat::snapshot()

library(WriteXLS)

#EXERCICIO 3
exercicio3 <- data.frame("Número de filhos" = c(0,1,2,3,4,5,"Mais de 5"), "Famílias" = c(17,20,28,19,7,4,5))
WriteXLS(exercicio3, ExcelFileName ="data/resumo_exercicio3.xls")

ex3 <- data.frame("Número de filhos" = c(rep(0, length = 17), rep(1, length = 20), rep(2, length = 28), rep(3, length = 19), rep(4, length = 7), rep(5, length = 4), rep(6, length = 5)))
WriteXLS(ex3, ExcelFileName = "data/exercicio3.xls")

###MODA
tabela <- table(ex3)
moda = as.numeric(names(which(max(tabela) == tabela)))

###MEDIANA
mediana = median(ex3$Número.de.filhos)

png(filename = "graphics/ex2.png", width = 500, height = 500)
barplot(c("Moda"=moda, "Mediana"=mediana), col="darkseagreen1")
dev.off()

