# Objetos em R

# Vetor: possui 1 dimensão e 1 tipo específico de dado

vetor1 <- c(1:10)
vetor1
length(vetor1)
mode(vetor1)
class(vetor1)
typeof(vetor1)

# Matriz: Possui 2 dimensões e 1 tipo e dado
matriz <- matrix(1:10, nrow= 2)
matriz
length(matriz)
mode(matriz)
class(matriz)
typeof(matriz)

# Array: Possui 2 ou mais dimensões e 1 tipo de dado
array1 <- array(1:5, dim=c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

# Data Frames: Dados de diferentes tipos
# Maneira mais fácil de explicar dataframes: É uma matriz com diferentes tipos de dados com mais de 2 dimensões
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)


# Listas: Coleções de diferentes objetos
# Diferentes tipos de dados são possíveis e comuns

lista1 <- list(qualquer_coisa=matriz, outra_coisa=vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)


# Funções também são vistas como objetos em R
func1 <- function(x) {
  var1 <- x * x
  return (var1)
}

func1(5)
class(func1)


# Removendo Objetos
objects()
rm(array1, func1)
objects()