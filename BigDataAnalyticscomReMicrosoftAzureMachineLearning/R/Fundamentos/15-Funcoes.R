# Funções

#Help
?sample
args(sample)
args(sd)


#Funções Built-In
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(c(1:5))
seq(c(1:5))
sort(rev(c(1:5)))
append(c(1:5), 6)

vec1 <- c(1.5,2.5,8.4,3.7,6.3)
vec2 <- rev(vec1)
vec2

# Funções dentro de funções
plot(rnorm(10))
mean(c(abs(vec1), abs(vec2)))

# Criando funções
myfunc <- function(x) {x += x}
myfunc(10)
class(myfunc)


myfunc2 <- function (a,b) {
  valor = a ^ b
  print(valor)
}

myfunc2(3,2)

jogando_dados <- function(){
  num <-sample(1:6, size = 1)
  num
}
jogando_dados()
jogando_dados()
jogando_dados()



# Escopo
print(num)
num <- c(1:6)
num #Global


# funções sem número delimitado de parâmetros
vec1 <- (10:13)
vec2 <- c('a','b', 'c', 'd')
vec3 <- c(6.5,9.2,11.9,5.1)

myfunc3 <- function(...){
  df = data.frame(cbind(...))
  df
}

myfunc3(vec1)
myfunc3(vec2,vec3)
myfunc3(vec1, vec2,vec3)


# Funções Built-in - Não tente recriar a roda
# Comparação de eficiência entre função vetorizada e função "vetorizada no R"

x <- 1:1000000 

# função que calcula a raiz quadrada de cada elemento de um vetor de números
meu_sqrt <- function(numeros) {
  resp <- numeric(length(numeros))
  for(i in seq_along(numeros)) {
    resp[i] <- sqrt(numeros[i])
  }
  return(resp)
}


system.time(x2a <- meu_sqrt(x))

system.time(x2b <- sqrt(x))

identical(x2a, x2b)