# Vetores

# Vetor de caracteres
vetor_character = c('Hello', 'World')
vetor_character

# Vetor de floats
vetor_numerico = c(1.90, 45.3, 68.4)
vetor_numerico

# Vetor de valores complexos
vetor_complexo = c(5.2 + 3i, 4.8 * 7i)
vetor_complexo


# Vetor de valores lógicos
vetor_logico = c(TRUE, FALSE, TRUE, TRUE)
vetor_logico

# Vetor de valores inteiros
vetor_inteiros = c(1,5,8,9)
vetor_inteiros


# Utilizando seq()
vetor1 = seq(1:10)
vetor1


# Utilizando rep()
vetor1 = seq(1:10)
vetor1


# Indexação de vetores
a <- c(1,5,2,9.7)
a
a[2]


# Combinando vetores
v1 = c(1,8,9)
v2 = c(7,9,6,3)
v3 = c(v1,v2)
v3

# Operação com vetores
x = c(1,3,5,7)
y = c(9,7,8,4)
x * 5
x + y
x - y
x * y
x / y

# Somando vetores com tamanhos diferentes de elementos
alfa = c(10,20,30)
beta = c(1,2,3,4,5,6,7,8,9)
alfa + beta

# Vetor nomeado
v = c('Barack', 'Obama')
v = 
names(v) = c('Nome', 'Sobrenome')
v
v['Nome']