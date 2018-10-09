packrat::status()
packrat::restore()
#packrat::snapshot()

library(readxl)

#EXERCICIO 2
exercicio2 <- read_excel("data/exercicio2.xls")

tabela <- table(exercicio2)

##MEDIDAS DE POSIÇÃO
ex2 <- exercicio2$Casas
media <- mean(ex2)
mediana <- median(ex2)

###MODA
max_bool <- tabela == max(tabela)
moda <- as.numeric(names(which(max_bool)))

##MEDIDAS DE DISPERÇÃO
amplitude <- diff(range(ex2))
variancia_amostral <- var(ex2)
dv_amostral <- sd(ex2)

#graficos
png(filename = "graphics/ex2.png", width = 500, height = 500)
hist(ex2, main="Histograma das aparições", ylab='Frequências', col="cyan")
dev.off()
