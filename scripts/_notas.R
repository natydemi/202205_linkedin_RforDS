### TASKS

# Modulo 01
- tem umas coisas, mas vc tem que fazer os outros!!! Sai daqui!!!!!!
  
# Modulo 02

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