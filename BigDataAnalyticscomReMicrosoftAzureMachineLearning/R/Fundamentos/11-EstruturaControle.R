# Estruturas de Controle

# If-else
x = 25
if(x < 30)
{"Este número é menor que 30"}


if(x < 30)
  "Este número é menor que 30"

if(x < 7){
  "Este número é menor que 7"
}else{
  "Este número não é menor que 30"
}

if(x < 7){
  "Este número é menor que 7"
}else if(x == 7){
  "Este número é o número 7"
}else{
  "Este número não é menor que 30"
}

ifelse(x < 6, "Correto", NA)

# Estruturas aninhadas
x = c(7,5,4)
ifelse(x < 5, 
       'Menor que 5',
       ifelse(x == 5, 
              "Igual a 5", 
              "Maior que 5"))

# Estruturas if dentro de funções
func1 <- function(x,y){
  ifelse(y < 7, x + y, 'Não encontrado')
}

func1(4,7)
func1(40,2)


rep(rep(rnorm(10),5))

# Repeat

x = 0
repeat{
  x = x + 3
  if(x > 99)
    break
  print(x)
}

# loop For
for(i in 1:20){print(i)}
for(q in rnorm(10)){print(q)}

# Ignora alguns elementos dentro do loop
for(i in 1:22){
  if(i == 13 | i == 15){
    next
  }
  print(i)
}


# Interromper um loop
for(i in 1:22){
  if(i == 15){
    break
  }
  print(i)
}

# Lopp While
x = 1
while(x < 10){
  x = x + 1
  if(x == 5) break
  print(x)
}

# Lopp While não será executado
x = 1
while(x > 10){
  x = x + 1
  print(x)
}
