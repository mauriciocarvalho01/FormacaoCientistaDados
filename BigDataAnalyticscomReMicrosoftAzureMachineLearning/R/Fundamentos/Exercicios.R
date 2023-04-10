# Exercicio 1
vetor <- c(1:12)
vetor

# Exercicio 2
matriz <- matrix(data = c(1:16), nrow = 4, ncol = 4)
matriz

#Exercicio 3
lista <- list(vetor, matriz)
lista

# Exercicio 4
# http://data.princeton.edu/wws509/datasets/effort.dat
df <- data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
class(df)
df

#Exercicio 5
# c("config", "esfc", "chang")
names(df) = c("col1", "col2", "col3")
df

# Exercicio 6
iris
class(iris)
dim(iris)
summary(iris)
str(iris)

# Exercicios
plot(iris$Sepal.Length, iris$Sepal.Width)

# Exercicio 8
?subset
df <- data.frame(subset(iris, Sepal.Length >	7))
df

#Exercicio 9
install.packages('dplyr')
library(dplyr)
??slice
new_df <- slice(iris, (1:15))

# Exercicio 10
RSiteSearch("filter")

filter(new_df, Sepal.Length	>	5)
