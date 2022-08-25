
# Módulo 02 - Importação

# ::::: hands-on: exportação de base de dados -----
          
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
        
# Importação/exportação -----
    #Com a função `write.table()`, tendo como parametros o nome do objeto a ser exportado e o path desejado
    #o arquivo é criado no diretório de trabalho. 
    #Para saber qual o diretório de trabalho corrente, utilizamos o comando `getwd()` (*get working directory*)
    #Enquanto que para alterar o diretório de trabalho temos a função `setwd()` (*set working directory*)
    
    #Alternativamente podemos especificar o destino do arquivo de interesse, precedendo o nome do arquivo 
    #com o diretório desejado, p.e.: `write.table(mtcars, file = "C:/Users/mtcars.txt")` 
    #note que trabalhamos com barras simples (`/` ou `\\`) para especificação de diretórios.
    
    #para a leitura de arquivos: `read.table`
    
    #Tanto a função `write.table()` quanto a `read.table()`possuem uma série de parâmetros, 
    #permitindo especificações de separadores, títulos e comentários, 
    #além de variações de extenção
    #para consultar funções relacionadas pesquise os tópicos `??read` e `??write`.


# Projeto: arquivo .Rproj -----
    #Existe ainda uma terceira alternativa: trabalhar com a opção de projetos do RStudio (`.RProj`). 
    #Nesta, o diretório em que o arquivo `.RProj` estiver salvo, passa a ser a pasta raiz da análise. 
    #Para criar um projeto no RStudio, é necessário clicar no ícone superior à direita:
    
    #dica: use o pacote usethis::create_project()
        
# ::::: hands-on: criação de projetos -----
    # 1) crie um projeto em um novo repositório, 
    # 2) salve um script chamado "aula_2_hands_on.R" neste repo
    # 3) no script escreva um programa que tire uma amostra aleatória de tamanho 50 da base de dados iris, 
    #   considerando para tal a set.seed(1), visando garantir a reprodutibilidade dos resultados
    # 4) salve este novo data.frame em um arquivo .csv e o exclua do seu environment
    # 5) leia o arquivo .csv em um novo objeto, chamado iris_amostra
    # 6) rode uma análise estatística da base iris original e da base que vc criou
    #   você observou alguma mudança significativa?
    
        
# ::::: hands-on: importação de base de dados -----
  # zip o repositório criado e dê unzip em outra pasta
  # você deve conseguir rodar toda a sua análise sem necessitar alterar o código 
        
        
        
        Importing other types of data:
          
          feather, for sharing with Python and other languages.
        haven, for SPSS, SAS and Stata files.
        httr, for web apis.
        jsonlite for JSON.
        readxl, for .xls and .xlsx files.
        rvest, for web scraping.
        xml2, for XML.
        
# ::::: Refs -----
            
  #	Point-and-click - Rbase
    # precisa instalar várias bibliotecas
    # install.packages("Rcmdr")
    # library(Rcmdr)
