# Explorando o 01-RStudio.R


# Nome dos contibuidores
contributors()


# Licença
licence()

# Informações sobre a sessão
sessionInfo()

# Imprimir na tela
print("Hello World")

#Criar gráficos
plot(3:10)

# Criar um histograma
hist(rnorm(10))


# Importar pacotes
install.packages('randomForest')
install.packages('ggplot2')

# Carregar um pacote no script
library(randomForest)

# Descarregar um pacote no script
detach(package:randomForest)

# Se tiver dúvida sobre uma função
help(mean)
# Ou
?mean

# Se não tive o nome da função e quiser saber sobre o pacote
help.search('randomForest')
# Ou
??randomForest
# Ou 
RSiteSearch('randomForest')

# Exemplos sobre uma função
example(mean)

# Ok
