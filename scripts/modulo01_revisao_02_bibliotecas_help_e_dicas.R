
# Módulo 01 - Revisão - Bibliotecas, Helps e Fontes de Pesquisa
 
# Neste script você irá encontrar uma revisão sobre biblioteca no R, e  
# maneiras de procurar ajuda . 

# ----- Bibliotecas -----

# O que são? -----
  #Bibliotecas são uma coleção de: funções, dados e códigos compilados.
  
  #Tendo que uma função é um conjunto de instruções organizadas, visando
  # a execução de uma tarefa, podemos fazer uma analogia das bibliotecas 
  # com o papel que os livros assumem na nossa vida. Isto porque os livros  
  # nos permitem acessar conhecimentos relacionados a um tópico de interesse.
  
  #É por meio das bibliotecas que ganhamos poder de fogo no R. Atualmente,
  # apenas no repositório oficial da linguagem, existem + de 18K bibliotecas.


# Como consultar, instalar e acessar -----

  #No RStudio podemos consultar as nossas bibliotecas na aba `Packages`.
  
  #Para instalar uma biblioteca, também chamado de pacote, 
  # utilizamos o comando: `install.packages("nome_do_pacote")`
  install.packages("praise")  
  
  #Após a instalação, precisamos acessar o pacote desejado, 
  # por meio do comando `library(nome_do_pacote)`
  
  library(praise)
  
  #DICA: para instalar precisamos das aspas, para carregar, não
  # é possível também carregar uma biblioteca com a função require().

# Mais sobre o uso -----

  #Uma vez que a biblioteca esteja instalada, não é necessário carregar todas 
  # as funções da biblioteca, sendo suficiente utilizar o seu nome, seguido 
  # por `::` e a função desejada, ou seja: 
  # nome_da_biblioteca::função_de_interesse()
  
  dplyr::band_members
  
  #está é, inclusive, uma boa prática em termos de programação, visto 
  #evitar problemas com funções homônimas (com o mesmo nome).
  
  #DICA: com `nome_da_biblioteca::` podemos consultar as funções da biblioteca

# Mais sobre a instalação -----

  #Nos seus códigos uma prática comum é manter um comando para instalar
  # as bibliotecas utilizadas no seu script, no caso destas ainda não 
  # terem sido instaladas
  
  if(!require("dplyr")) install.packages("dplyr")
  
  
  #A rede de distribuição oficial de bibliotecas do R, se chama CRAN, 
  # mas existem também bibliotecas disponibilizadas via repositórios como 
  # o Bioconductor, o GitHub, ou mesmo via .zip
  
  #exemplos
  #instalação do pacote a partir do CRAN
  install.packages("dplyr")
  #instalação a partir do git (versão mais recente da biblioteca)
  devtools::install_github("tidyverse/dplyr")
  #instalação a partir de um arquivo .zip
  install.packages("C:/Users/dplyr.zip", repos = NULL)


  #Quanto às atualizações das bibliotecas, algo que faz parte da constante
  # evolução da linguagem, podemos utilizar o código: `update.packages()`, 
  # ou reinstalar os pacotes que temos interesse em atualizar. Para
  #  consultar quais pacotes estão desatualizados: `old.packages()`.
  
  #DICA: para checar quais bibliotecas estão instaladas: além da aba `Packages`
  # do RStudio, podemos também utilizar o comando: `installed.packages()`.            

  # ATENÇÃO: Ao atualizar o R, por default, você irá “perder” as bibliotecas 
  # que estiverem instaladas no seu computador, sendo necessário fazer a 
  # instalação destas novamente. Isto porque não há garantia que as bibliotecas 
  # funcionem com a nova versão do R – um comportamento usual para qualquer 
  # linguagem de programação. Para consultar a versão dos seus pacotes: 
  #sessionInfo()
  

# ----- Helps, pedindo Socorro!  -----     

# Como pesquisar funções -----

#Uma maneira de fazer pesquisas é por meio da função: `help()` ou `?`
# ou ainda via point-and-click, no painel `Help` do RStudio: 
help("praise")
?praise

#Apenas funções de bibliotecas carregadas estarão disponíveis 
# para busca, como alternativa use:
?praise::praise()

#ATALHO: posicione o mouse na função que você tem interesse em 
# pesquisar, e digite F1.

#No caso de consultas que envolvam objetos com caracteres especiais, 
# é necessário que o texto esteja entre crases.
?`?`

#Podemos também pesquisar por tópicos de modo mais geral, para além das
# funções, por meio de: `help.search()` ou `??`.
??median

#erros: não se assuste quando ao tentar executar algum comando, ao receber 
# uma mensagem procure ler esta com atenção, abstraindo possíveis termos
# que você não conheça. Não se atentando aos detalhes, você terá uma indicação 
# importante do que fazer, para resolver o seu problema.

#Para pesquisas externas de forma geral (erros, bibliotecas, etc), 
# é importante que você: escreva a letra `R` antecedendo as palavras-chave 
# da busca, e evite frases muito elaboradas. E, a partir dos resultados 
# obtidos, você pode refinar a sua pesquisa original, adicionando ou
# excluindo palavras. Se você puder fazer a pesquisa em inglês, encontrará mais materiais!

#Na página do tidyverse, você encontrará materiais sobre como criar exemplos 
# reprodutíveis para facilitar o compartilhamento da sua dúvida. Seguido
# de algumas sugestões de onde encontrar ajuda: https://www.tidyverse.org/help/#reprex 


# Fontes de Pesquisa -----   

  #Para aumentar o seu leque de bibliotecas e funções: 
  #cheatsheets - o RStudio possui uma ótima curadoria!
  #https://www.rstudio.com/resources/cheatsheets/ 
  #algumas cheatsheets podem ser encontradas na Aba: Help do RStudio.
  
  #addins: install.packages("packagefinder")
  
  #Para se manter atualizada (o):
  # pesquisa por `#rstats` nas redes sociais
  # pesquise por grupos como "R Brasil" no Telegram ou R-Ladies no Meetup 
  # não deixe de compartilhar a sua jornada de evolução na linguagem! 
  
# ----- HANDS-ON -----

  # Para praticar: investigue a aba `Tutorial` na IDE do RStudio
  #Note que ao iniciar algum dos tutoriais a aba `Jobs`ficará ocupada,
  # até que você feche o treinamento. Para isso você precisa clicar no botão 
  # vermelho `stop`, da aba `Tutorial` ou `Jobs`. Note também que no fim do
  # tutorial há um link para a página de Tutoriais da RStudio, nesta página
  # você encontrará o RStudio primers, com vários tutoriais interativos: 
  # https://rstudio.cloud/learn/primers


# ----- REFERÊNCIAS -----
  