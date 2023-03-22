# Matrizes

# Criando Matrizes
# Número de linhas
matrix(c(1,2,3,4,5,6), nr = 2)
matrix(c(1,2,3,4,5,6), nr = 3)
matrix(c(1,2,3,4,5,6), nr = 6)

# Número de colunas
matrix(c(1,2,3,4,5,6), nc= 2)
matrix(c(1,2,3,4,5,6), nc = 3)
matrix(c(1,2,3,4,5,6), nc = 6)

# Help
?matrix

# Matrizes precisam de um número par de valores
matrix(c(1,2,3,4,5), nr = 2)

# Criando matrizes a partir de vetores e preenchendo a partir de linhas 
meus_dados = c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T)

estados = c('SP', 'MG', 'AM', 'BA')
names(estados) <- c('São Paulo', 'Minas Gerais', 'Amazonas', 'Bahia')
estados
estados[length(estados)]

# Mudando a organização da matriz por linha e sem configuração por linha
matrix(data = names(estados), nrow = 2, ncol = 2, byrow = T)
matrix(data = estados, nrow = 2, ncol = 2)


# fatiando a matriz
mat <- matrix(c(1,2,3,4), nr = 2)
mat 
mat[1,2]
mat[2,2]
mat[2,3]
mat[,2]

# Criando uma matriz diagonal
matriz = 1:3
diag(matriz)

# extraindo vetores de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)

w <- matrix(c(2,4,8,12), nr = 2, ncol = 2)
w
t(w)
U <- t(w)
U

# Obtendo uma matriz inversa
solve(W)

# Multiplicando matrizes
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat1
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

# Multiplicando matrizes com vetores
x = c(1:4)
x
mat3 <- matrix(c('Futebol', 'Natação', 'Campo', 'Piscina'), nr = 2)
mat3
dimnames(mat3) <- ( list( c('Linha1', 'Linha2'), c('Coluna1', 'Coluna2')))
mat3

# Identificado linhas e colunas no momento da criação da matriz
matrix(c('Node js', 'Typescript', 'Python', 'R'), nr = 2, dimnames = list( c('0', '1'), c('Stack Principal', 'Stack Secundária')))

# 
mat4 <- matrix(c(2,3,4,5), nr = 2)
mat4
mat5 <- matrix(c(6,7,8,9), nr = 2)
mat5
cbind(mat4, mat5)
rbind(mat4, mat5)

# Desconstruindo a matriz
c(mat4)



