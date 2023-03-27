## Strings

# String
texto <- "Isso é uma string"
texto

x = as.character(3.14)
x
class(x)

# Concatenando Strings
nome = 'Barack'; 
sobrenome = 'Obama'
paste(nome, sobrenome)
cat(nome, sobrenome)


# Formatando a saída
sprintf('%s %s governa os EUA há %d anos', nome, sobrenome, 8)

# Extraindo parte de uam string
texto <- 'Isso é uma string'
substr(texto, start = 12, stop = nchar(texto))
?substr

# Contando os caracteres
nchar(texto)

# Alterando a capitalização
tolower(texto)
toupper(texto)

# Usando stringr
library(stringr)


# Dividindo a string em caracteres
strsplit(texto, NULL)
?strsplit

# Dividinho a string em espaço em branco
strsplit(texto, ' ')

string1 <- c('Isso é uma string qualquer de teste1!', 'Isso é uma string qualquer de teste2!')
string2 <- c('Isso é uma string qualquer de teste3!', 'Isso é uma string qualquer de teste4!')

# Concatenando
?str_c
str_c(c(string1, string2), sep = '')

# Contando
str_count(string2, 's')

# Localizando a primeira e ultima posição que o caractere aparece
str_locate_all(string2, 's')

# Substitui a primeira ocorrencia de um caractere
str_replace(string2, '\\s', '')


# Substitui todas as  ocorrencias de um caractere
str_replace_all(string2, '\\s', '')


# Detectando padrões nas strings
string1 <- '23 mai 2000'
string2 <- '1 mai 2000'
padrao <- 'mai 20'
grepl(pattern = padrao, x = string1)
padrao <- 'mai20'
grepl(pattern = padrao, x = string2)

# Importando arquivo txt
# http:xxxxxxx

arquivo <- read.csv('http://www.gutenberg.org/cache/epub/100/pg100.txt')
head(arquivo)
tail(arquivo)

str_count(arquivo, '7')
str_locate_all(arquivo, '7')



strtail <- function(string, number = 1){
  if(number < 0){
    substring(string, 1 - number)
  }else{
    substring(string,nchar(string)-number+1) 
  }
}

strtail("String de teste", -5)

