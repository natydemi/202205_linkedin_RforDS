### TASKS

# Modulo 01 - descritivo: importação / exploração
- tem umas coisas, mas vc tem que fazer os outros!!! Sai daqui!!!!!!
  
# Modulo 02 - diagnóstico: transformação / visualização

  Mas para te ajudar tomar algumas decisões durante a elaboração de métricas e gráficos, os tipos de dados definidos acima, serão um importante aliado.
  
  
# Modulo 03 - preditivo: dateprep / modelagem


# Modulo 02 - diagnóstico: testes / comunicação

  


# ::::: bases consideradas -----

```{r}
covid19brazil::brazil_region %>% ungroup() %>%  glimpse()
covid19brazil::brazil_region %>% ungroup() %>% skimr::skim()
```


```{r}
rent <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-07-05/rent.csv') %>%  glimpse()
```


```{r}
permits <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-07-05/sf_permits.csv') %>%  glimpse()
```


```{r}
new_construction <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-07-05/new_construction.csv') %>%  glimpse()
```

```{r}
olympics <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-27/olympics.csv')

olympics %>%  glimpse()
```


```{r}
survey <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-05-18/survey.csv')

survey %>%  glimpse()
```


```{r}
games <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-03-16/games.csv')

games %>%  glimpse()
```



```{r}
youtube <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-03-02/youtube.csv')

youtube %>%  glimpse()

```

```{r}
ikea <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-11-03/ikea.csv')
ikea %>%  glimpse()
```

```{r}
black_in_data <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-11-17/black_in_data.csv')

black_in_data %>%  glimpse()
```

```{r}
bigmac <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-12-22/big-mac.csv')

bigmac %>%  glimpse()
```


# ::::: Hands-on: funções para análise descritiva -----

#Vamos agora passar por algumas aplicações de funções estatísticas
# built-in do R, considerando os dados mtcars

#LEMBRETE: para mais informações sobre a base, acesse ?mtcars

View(mtcars)

#`head()` - retorna as primeiras linhas da base de dados, 
# ou similarmente a função `tail()` que contempla as últimas linhas:
head(mtcars)
tail(mtcars)


#`str()` - exibe a estrutura interna de um objeto, 
# no caso da base de dados que estamos trabalhando por exemplo, temos: a
# estrutura dos dados (data.frame), o número de linhas (32 observações) e 
# colunas (11 variáveis), além da classe de cada uma das colunas, 
# e uma amostra das primeiras observações de cada uma das colunas: 
str(mtcars)


# `summary()` - é uma função genérica usada para produzir resumos 
# de resultados segundo várias funções descritivas, no caso de variáveis 
# numéricas, por exemplo: 
summary(mtcars)

# `cor()` - apresenta a matriz de covariâncias     
cor(mtcars)

#`plot()` - retorna uma matriz de gráficos de dispersão 
plot(mtcars)
#`boxplot()` - retorna o gráfico boxplot 
boxplot(mtcars)

#como esta base faz parte do repertório básico do R, 
# não a visualizamos na aba `Environment`, salvo se fizermos:
data("mtcars")
#ou
mtcars <- mtcars  


#DICA: para consultar mais funções estatísticas: help(package=stats) 

#regressão: um exemplo em que ajustamos a variável qsec 
# em função da variável carb:
fit <- lm(qsec ~ carb, data = mtcars)  
summary(fit)
plot(fit)

#excluindo o modelo
rm(fit)

#agora a variável qsec em função de todas as demais variáveis,
# representadas pelo . (ponto) na equação:
fit <- lm(qsec ~ ., data = mtcars)  
summary(fit)
plot(fit)




# # ::::: hands-on: exportação de base de dados -----

#exporte os dados em um arquivo .csv
write.csv(state, "base_exportada.csv")

#em qual diretório o arquivo se encontra?
getwd()

#qual a função que altera o diretório
#C:\\Users\\natyd\\Desktop
#setwd("C:/Users/natyd/Desktop")
setwd()


#delete o objeto state e releia o arquivo
rm(state)
state
state <- read.csv("base_exportada.csv")
state

# ::::: hands-on: manuseando dados (tidyverse - dplyr) -----
  #No RStudio Learn Primers: #https://rstudio.cloud/learn/primers 
  # faça os exercícios propostos na aba `Work with Data`,
  # priorizando a seção `Derive Information with dplyr`
  # https://rstudio.cloud/learn/primers/2.3
  
  # ::::: hands-on: cheatsheet (dplyr) -----
  #replicar os exemplos da cheatsheet do dplyr
  #https://github.com/rstudio/cheatsheets/blob/main/data-transformation.pdf




# ::::: Refs -----

  #	Point-and-click - Rbase
    # precisa instalar várias bibliotecas
    # install.packages("Rcmdr")
    # library(Rcmdr)
  
  # Na IDE do Rstudio investigue a aba `Tutorial` (precisa ter o RStudio mais recente)
    # (usualmente acima, à direita, próximo a aba `Environment`)
    #Note que ao iniciar algum dos tutoriais a aba `Jobs`, 
    # usualmente próxima a aba `Console`, ficará ocupada 
    # até que você feche o treinamento - clicando
    # no botão `stop`, da aba `Tutorial` ou `Jobs`
    #Note também que no fim do tutorial há um link
    # para a página de Tutorials da RStudio
    # Investigando está página, você encontrará o 
    # RStudio primers, que com vários tutoriais interativos
    
    # https://rstudio.cloud/learn/primers

  #link cheatsheets no site da rstudio: 
    #note que ao fim da página você encontrará algumas cheatsheets em português
    # https://rstudio.com/resources/cheatsheets/


  #livros
    #(inglês)
    # R for Data Science, by by Garrett Grolemund, Hadley Wickham:
    # https://r4ds.had.co.nz/ 
    
    #(português)
    # Curso-R ~ material em português
    # https://livro.curso-r.com/


# poket ------

#para instalar uma biblioteca
install.packages("tidyverse") 

#para utilizar as funções de uma biblioteca instalada, é necessário carrega-la
#dando um tick na seção 'Packages' ou
library(tidyverse)


#Todas as bibliotecas abaixo são instaladas junto com o tidyverse:
#mas apenas o 1º grupo é carregado, as demais precisam ser carregadas individualmente

#instaladas e carregadas 
# ggplot2, for data visualisation.
# dplyr, for data manipulation.
# tidyr, for data tidying.
# readr, for data import.
# purrr, for functional programming.
# tibble, for tibbles, a modern re-imagining of data frames.

#instaladas mas não carregadas 
# Importing other types of data:
# readxl, for .xls and .xlsx files.
# feather, for sharing with Python and other languages.
# haven, for SPSS, SAS and Stata files.
# httr, for web apis.
# jsonlite for JSON.
# rvest, for web scraping.
# xml2, for XML.
# Working with specific types of data:
# hms, for times.
# stringr, for strings.
# lubridate, for date/times.
# forcats, for factors.
# Modelling
# modelr, for modelling within a pipeline
# broom, for turning models into tidy data



#vamos refazer o exercicio de salvar uma base do R como .csv

#escrevendo
#antigo
write.csv(mtcars, file = "aulaR_dados.csv")
#novo
write_csv(mtcars, path = "aulaR_dados.csv")
#vantagens do novo: mais rápido, tem mais opções, e
#tem o msm padrão de sintaxe de várias outras funções do tidyverse  

#lendo
#antigo
read.csv("aulaR_dados.csv") 
#novo
read_csv("aulaR_dados.csv") 
#vantagens do novo: além das citadas no write_csv, note que o arquivo 
#lido já está no formato tidy, ou seja, mais organizado   

#excel
#escrevendo 
#eu costumo utilizar a biblioteca openxlsx para escrever excel
install.packages("openxlsx")
library(openxlsx)
write.xlsx(mtcars, file = "aulaR_dados.xlsx")
#lendo    
#costumo usar a biblioteca readxl, do tidyverse
library(readxl)
read_excel("aulaR_dados.xlsx")

#lembrando que para ver + opções de parâmetros das funções é só consultar o help