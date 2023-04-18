# Big Data na Prática 1 - Temperatura Média nas Cidades Brasileiras

# Dataset:
# Berkeley Earth
# Http://berkeleyearth.org/data


# Instalando e carregando os pacotes
install.packages('readr')
install.packages('data.table')
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)

# Carregando os dados (Usando um timer para comparar o tempo de carregamento)

# usando read.csv2()
system.time(df_teste1 <- read.csv2('C:/Users/devel/OneDrive/Área de Trabalho/courses/FormacaoCientistaDados/BigDataAnalyticscomReMicrosoftAzureMachineLearning/R/Fundamentos/TemperaturasGlobais.csv'))


# usando read.table()
system.time(df_teste2 <- read.table('C:/Users/devel/OneDrive/Área de Trabalho/courses/FormacaoCientistaDados/BigDataAnalyticscomReMicrosoftAzureMachineLearning/R/Fundamentos/TemperaturasGlobais.csv'))


# usando fread()
?fread
system.time(df <- fread('C:/Users/devel/OneDrive/Área de Trabalho/courses/FormacaoCientistaDados/BigDataAnalyticscomReMicrosoftAzureMachineLearning/R/Fundamentos/TemperaturasGlobais.csv'))


# Criando subsets dos dados carregados
head(df)
cidadesBrasil <- subset(df, Country == 'Brazil')
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil)
dim(df)
dim(cidadesBrasil)

# Limpando os valores NA
cidadesBrasil <- na.omit(cidadesBrasil)
cidadesBrasil

# Preparação subsets dos dados carregados
?as.POSIXct
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt, format='%Y-%m-%d')
cidadesBrasil$Month <- month(cidadesBrasil$dt)
cidadesBrasil$Year <- year(cidadesBrasil$dt)
head(cidadesBrasil)

# Palmas
plm <- subset(cidadesBrasil, City == 'Palmas')
plm <- subset(plm, Year %in% c(1796,1846,1896,1996,2012))
head(plm)

# Curitiba
crt <- subset(cidadesBrasil, City == 'Curitiba')
crt <- subset(crt, Year %in% c(1796,1846,1896,1996,2012))
head(crt)

# Recife
recf <- subset(cidadesBrasil, City == 'Recife')
recf <- subset(recf, Year %in% c(1796,1846,1896,1996,2012))
head(recf)


# Construindo os Plots
p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, linewidth = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Palmas") +
  theme(plot.title = element_text(size = 18))

p_crt <- ggplot(crt, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, linewidth = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Curitiba") +
  theme(plot.title = element_text(size = 18))

p_recf <- ggplot(recf, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, linewidth = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Recife") +
  theme(plot.title = element_text(size = 18))

p_plm   
p_crt
p_recf
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     