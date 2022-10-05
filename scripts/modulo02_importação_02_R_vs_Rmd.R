
# Módulo 02 - Importação

# Importação/exportação -----

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
        
  
  
# Projeto: arquivo .Rproj -----
  #Existe ainda uma terceira alternativa: trabalhar com a opção de projetos do RStudio (`.RProj`). 
  #Nesta, o diretório em que o arquivo `.RProj` estiver salvo, passa a ser a pasta raiz da análise. 
  #Para criar um projeto no RStudio, é necessário clicar no ícone superior à direita:


# ::::: hands-on: criação de projetos -----
# 1) crie um projeto em um novo repositório, 
# 2) salve um script chamado "aula_2_hands_on.R" neste repo
# 3) no script escreva um programa que tire uma amostra aleatória de tamanho 50 da base de dados iris, 
#   considerando para tal a set.seed(1), visando garantir a reprodutibilidade dos resultados
# 4) salve este novo data.frame em um arquivo .csv e o exclua do seu environment
# 5) leia o arquivo .csv em um novo objeto, chamado iris_amostra
# 6) rode uma análise estatística da base iris original e da base que vc criou
#   você observou alguma mudança significativa?

# EXTRA) zip o repositório criado e dê unzip em outra pasta
# você deve conseguir rodar toda a sua análise sem necessitar alterar o código 



# ---- estruturas de dados