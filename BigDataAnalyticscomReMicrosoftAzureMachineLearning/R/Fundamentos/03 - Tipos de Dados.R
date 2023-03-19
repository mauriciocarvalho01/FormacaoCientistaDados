# Tipos de Dados em R

# Numeric - Todos os números criados em R são do tipo numérico
num = 2.5
num

num2 = 4
num2

x = -123
x = 
class(x)


#Conversão de tipos Numeric
is.integer(num2)
y = as.integer(num2)
z = is.double(num2)
class(y)

x2 = 3.14
x2
y2 = as.integer(x2)
y2

as.integer('3.14')
as.integer('Joe')
is.integer('3.14')
class('3.14')
as.integer(TRUE)


char = 'A'
char




# Números Complexos
complexo = 2.5 + 4i
complexo
class(complexo)


sqrt(-1)
sqrt(-1 + 0i)
sqrt(as.complex(-1))

# Lógico
x = 1;
y = -2
z = x > y
z
class(z)


u = TRUE; v = FALSE;
u & v
u | v
!u & !v


