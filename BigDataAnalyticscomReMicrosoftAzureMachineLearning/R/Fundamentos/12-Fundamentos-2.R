# Revisão e aprofundamento

# Interagindo com o sistema operacional
list.files()
.Platform$OS.type
.Platform$file.sep
Sys.Date()
Sys.info()
R.version
?system
system('dir')

# Criando vetores
vetor <- c(1,2,3,4,5,6)
vetor

# Criando uma matrix
dados <-(1:50)
matriz = matrix(dados, nrow=5, ncol=10, byrow = T)
matriz

# Criando listas
lista1 <- list(vetor, matriz)
lista1


# Criando Dataframes
caracteres <- c('A','B','C')
num_vetor <- c(1,2,3)
logic_vetor <- c(TRUE, FALSE, TRUE)
df1 <-data.frame(caracteres, num_vetor, logic_vetor)
df1

#Nomeando dataframes
names(df1) <- c('Caracteres', 'Numeros', 'Operadores Logicos')
df1

# Comparando Vetores e Matrizes
vec1 <- c(10,20,5)
mat1 <- matrix(vec1, c(60,1,7,8))
vec1 > 10
mat1 > 20
mat1 == 2
mat1 == 2 | mat1 == 60
mat1 == 2 & mat1 == 60
!mat1 == 2 | mat1 == 60


# Iteragindo em um vetor

for(i in vec1){
  if(i >= 10){
    print('Maior que 10')
  }else{
    print('Menor que 10')
  } 
}

for(i in 1:length(vec1)){
  if(vec1[i] >= 10){
    print('Maior que 10')
  }else{
    print('Menor que 10')
  } 
}


# Transposta
mat2 <- t(mat1)
mat2

for(i in mat1){
  for(j in mat2){
    total <- sum(mat1) + sum(mat2)
  }
}

print(total)



# Nomeando vetores, matrizes, listas e dataframes
names(vec1) <- c('Col1', 'Col2', 'Col3', 'Col4', 'Col5')
vec1
dimnames(mat1) = (list( c("Obs1", "Obs2", "Obs3", "Obs4", "Obs5"), c("Var1", "Var2", "Var3", "Var4", "Var5")))
mat1
names(lst1) <- c('Vetor', 'Matriz')
lst1
colnames(df1) <- c('Caracteres', 'Float', 'Inteiros')
rownames(df1) <- c("Obs1", "Obs2", "Obs3")
df1


# Verificando e Convertendo
# Funções que começam com is. verificam se o objeto é de um determinado tipo
is.vector(vec1)
is.vector(mat1)

# Funções que começam com as. convertem objetos
as.vector(mat1)
as.list(mat1)
as.data.frame(mat1)
as.character(mat1)
mat1

df1
as.matrix(df1)
as.numeric(df1)


# Valores NA
mat2 <- matrix(1:90, 10)
mat2
mat2[sample(1:50, 10)] = NA
mat2

?is.na
na_lista <- is.na(mat2)
na_lista


# Operações com objetos
vec1
sum(vec1)
mat1
rowSums(mat1)
colSums(mat1)
cbind(vec1, mat1)
rbind(vec1, mat1)
mat1 * 3


# Ranking e Ordenamento
a <- c(100, 10, 1000)
a
order(a)
a[order(a)]


# Slicing
vec1
vec1[2]
mat1
mat1[,2]
mat1[1:3, 2:4]
lst1
lst1[[1]]
lst1[[1]][4]
lst1$Matriz


# Dataframes
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)
mtcars[,5]
mtcars[1:4, 7:9]
mtcars[1:4, 'hp']
mtcars['hp']
mtcars$hp
subset(mtcars, subset = hp > 170)
library(dplyr)
slice(mtcars, 1:4)
order(mtcars)
order(mtcars$mpg)




