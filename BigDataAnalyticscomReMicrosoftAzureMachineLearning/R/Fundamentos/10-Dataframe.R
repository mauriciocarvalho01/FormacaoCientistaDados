### Dataframes

# Criando dataframes

df <- data.frame()
class(df)
df

# Criando vetores
nomes <- character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df



# Criando vetores
pais <- c('EUA', 'Dinamarca', 'Holanda', 'Espanha', 'Brasil')
nome <- c('Mauricio', 'Pedro', 'Aline', 'Beatriz', 'Marta')
altura <- c(1.78,1.72,1.63,1.59,1.63)
codigo <- c(5001,2183,4702,7965,8890)


# Criando um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)

# Adicionando um novo vetor a um existente
olhos = c('Verde', 'Azul', 'Azul', 'Castanho', 'Castanho')
pesquisa = cbind(pesquisa, olhos)
pesquisa[1]
pesquisa


# Informações sobre o dataframe
str(pesquisa)
dim(pesquisa)
length(pesquisa)


# Obtendo um vetor de um dataframe
pesquisa$pais
pesquisa$nome

# extraindo um único valor
# pesquisa[linha,coluna]
pesquisa[1,1]
pesquisa[3,3]


# Número de linhas e colunas
nrow(pesquisa)
ncol(pesquisa)

# Primeiros elementos do dataframe
head(pesquisa)
head(mtcars)

# Últimas linhas do datrame
tail(pesquisa)
tail(mtcars)


# Data frames built-in do R
?mtcars
mtcars


# Filtro para um subset que atenda a um critério
pesquisa[altura < 1.60,]
pesquisa[altura < 1.60,c('codigo', 'olhos')]

# Dataframes nomeados
names(pesquisa) <- c('País', 'Nome', 'Altura', 'Código', 'Olhos')
pesquisa

colnames(pesquisa) <- c('Var 1', 'Var 2', 'Var 3', 'Var 4', 'Var 5')
rownames(pesquisa) <- c('Obs 1', 'Obs 2', 'Obs 3', 'Obs 4', 'Obs 5')
pesquisa

# Importando arquivos
# read.xlsx()
# read.mtp()
# read.spss()
# read.table()
# read.csv()
# read.delim()


?read.csv

# df2 <- data.frame(read.csv('path_to_dataframe', header = TRUE, sep = ','))
# head(df2)
# summary(df2)


# df2$Diabete

# plot(df2$Admdate)


df3 <- merge(pesquisa, df2)
df3
