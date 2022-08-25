
# Script de Revisão - Tidyverse, Pipe (%>%), e Dialetos do R

# ----- O tidyverse? -----

  # O tidyverse é um conjunto de bibliotecas que compartilham a mesma filosofia, 
  # design e gramática, sempre tendo o conceito de "dados tidy" como pilar.
  # Garantindo ferramentas para diferentes momentos da Ciência de Dados.

  # Referência
  # https://www.tidyverse.org/ 


# o que são dados tidy?  -----
    
  # A filosofia tidy, trata-se de uma forma de vincular a estrutura de um conjunto 
  # de dados (seu layout físico) com sua semântica (seu significado).Para tal temos 
  # que, independente da origem, características, problemas e layout dos dados, 
  # estes precisam ser organizados garantindo que:
    
    # cada variável tenha a sua própria coluna;
    # cada observação tenha a sua própria linha; e
    # cada valor tenha a sua própria célula.
    
  # Apesar da simplicidade das premissas, nem sempre é tão trivial garantir tal 
  # estrutura. Algo que o ecossistema de pacotes do tidyverse não apenas facilitam a 
  # obtenção, por meio de uma série de recursos, mas também garantem a sua manutenção 
  # por meio de todo um ecossistema de análise. E qualquer dado que não esteja
  # de acordo com este sistema, será entendido como "messy data" (dados bagunçados)
  
  # Para tangibilizar melhor a importância deste conceito, Hadley Wickham, em 
  # seu artigo http://vita.had.co.nz/papers/tidy-data.pdf lista cinco dos 
  # problemas mais comuns ao se trabalhar com dados `não tidy`, ou seja, com "messy data":

    # 1. O cabeçalho (primeira linha da tabela) contém valores, e não o nome das variáveis;
    # 2. Diversas variáveis estão armazenadas na mesma coluna;
    # 3. Variáveis são armazenadas tanto em linhas, quanto em colunas;
    # 4. Diferentes tipos de unidades observacionais estão armazenadas em uma mesma tabela;
    # 5. Uma única unidade observacional está armazenada em diferentes tabelas.

  
  #Referências:
    # https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html
    #https://escoladedados.org/tutoriais/tidy-data-dados-arrumados-e-5-problemas-comuns/


# O que é um tibble? (vs. data.frame)  -----
  
  # A estrutura default do R mais próxima e usual para se trabalhar com dados 
  # tidy seriam os data.frames, porém as bibliotecas do ecossistema tidyverse 
  # trabalham com uma estrutura equivalente, porém mais moderna, chamada 
    #tbl_df ou tibble.
  # Tal estrutura é originalmente disponibilizada a partir da biblioteca 
  # com o mesmo nome, tibble, um dos pacotes default do tidyverse. 
  
    (teste_DF <- data.frame(x = letters, y = LETTERS))

    #vs.
    
    library(tibble)
    (teste_T <- tibble(x = letters, y = LETTERS))
  
  # Note que a visualização que temos ao trabalhar com os dados no formato tibble  
  # é não apenas mais concisa (em relação a quantidade de linhas) mas também mais
  # descritiva que a visualização original, como o tipo de cada coluna. 
  # Adicionalmente, questões como performance e consistência também apresentam 
  # melhorias em comparação aos data.frames.  

  # Ref.: https://tibble.tidyverse.org/
    
  
  
# O que é o operador pipe?  -----
    # https://www.curso-r.com/blog/2018-07-03-tutorial-pipe/


# As bibliotecas do tidyverse -----
  
  #O tidyverse trata-se de uma coleção de bibliotecas, sendo assim, ao instalar
  # esta biblioteca você estará também instalando uma série de outros
  # pacotes, como: lubridate para trabalhar com datas, ou ainda readxl, httr, e
  # xml2 para importar tipos específicos de dados. 
  
    #Para conhecer as bibliotecas instaladas junto ao tidyvser:
  
      install.packages("tidyverse")
      tidyverse::tidyverse_packages()
  
    #Para saber um pouco mais sobre algum dos pacotes você pode pesquisar
    # diretamente no navegador, ou por meio do help:
      ?haven
  
  #Contudo ao carregar o meta-pacote tidyverse, você observará na mensagem que 
  # segue apenas algumas das bibliotecas são carregadas:
  
    library(tidyverse)
  
  #Para aprender mais sobre o universo do tidyverse, existem muitas referências 
  # e materiais interessantes disponíveis na página oficial:
  # https://www.tidyverse.org/ 

   

               
# ----- Dialetos para Manipulação de Dados no R -----
  
  # Existem três importantes opções de sintaxes para manipulação de dados no R:
  
    # Rbase
      #não é necessário instalar ou carregar nenhuma biblioteca
    
      #Refs: a seção de exemplos do help
      ?`[.data.frame`
    
      
    # tidyverse: 
      install.packages("tidyverse")
      library(tidyverse)
      
      #Refs.: 
      ?tidyverse::tidyverse	
      ??tidyverse   
      
      
    # data.table
      install.packages("data.table")
      library(data.table)
  
      #Refs
      ?data.table::datatable-intro	
      ??data.table
  
  
      
# Comparação entre sintaxes -----
  
  # Neste script seguiremos a ordem: Rbase, tidyverse e data.table 
  # Importante comentar que mesmo dentro de cada uma destas sintaxes
  # existem outras maneiras 
      
# Lendo arquivos .csv -----
  #read.csv, read_csv e fread
  
  #read.csv("nome_arquivo_fake.csv")
  #read_csv("nome_arquivo_fake.csv")
  #fread("nome_arquivo_fake.csv")
  
# Classes de dados compatíveis -----
  #data.frame, tibble (tbl_df) e data.table
  
  (dados_rbase <- data.frame(col1 = c(1,2,3), col2 = c("a","b","a"), col3 = c(10, 20, 30))) 
  class(dados_rbase)
  
  (dados_tidyverse <- tibble(col1 = c(1,2,3), col2 = c("a","b","a"), col3 = c(10, 20, 30)))
  class(dados_tidyverse)
  
  (dados_data_table <- data.table(col1 = c(1,2,3), col2 = c("a","b","a"), col3 = c(10, 20, 30)))
  class(dados_data_table)
  
  #DICA: note que ao colocar parenteses ao redor do comando de atribuição, 
  # além da atribuição em si (criação do objeto), temos também o retorno
  # do objeto criado.
  
  
  
# Selecionando colunas (por nome) -----
  #[ , ...], select()	e [ , .(...) , ]
  
  dados_rbase[ , c("col1", "col3")]
  
  dados_tidyverse %>% select(col1, col3)
  
  dados_data_table[ , .(col1, col3)]
  
  #ATENÇÃO: no data.table, quando não utilizamos os últimos campos, os 
  # campos à direita, não é necessário adicionar a vírgula. A vírgula é 
  # obrigatória apenas para os campos à esquerda. 
  
  
# Selecionando colunas (por posição da coluna) -----
  #[ , ...], select()	e [ , ... , ]
  
  dados_rbase[ , c(1,3)]
  
  dados_tidyverse %>% select(1, 3)
  
  dados_data_table[ , c(1, 3)]
  
  
# Selecionando linhas (por posição) -----
  #[... , ], slice() e	[... , , ]
  
  dados_rbase[c(1,3), ]
  
  dados_tidyverse %>% slice(1,3)
  
  dados_data_table[c(1,3)]
  
  
# Selecionando linhas (pelo valor das colunas) -----
  #[... , ], filter() e	[... , , ]
  
  dados_rbase[dados_rbase$col3 >= 20, ]
  
  dados_tidyverse %>% filter(col3 >= 20)
  
  dados_data_table[col3 >= 20]
  
  
# Criando novas colunas -----
  #df$y = ..., mutate(tb, y = ...) e [ , y := ..., ]
  
  dados_rbase$col4 <- dados_rbase$col3 / 5 
  dados_rbase
  
  dados_tidyverse <- dados_tidyverse %>% mutate(col4 = col3 / 5)
  dados_tidyverse
  
  dados_data_table[ , col4 := col3 / 5]
  dados_data_table
  
  
# Excluindo colunas -----
  #df$y = NULL, select(tb, -y) e [ , y := NULL]
  
  dados_rbase$col4 <- NULL
  dados_rbase
  
  dados_tidyverse <- dados_tidyverse %>% select(-col4)
  dados_tidyverse
  
  dados_data_table[ , col4 := NULL]
  dados_data_table
  
  
# Criando sumarizações -----
  #apply(df[ , y], 2, ...), summarise()	e [ , ...(y), ]
  
  apply(dados_rbase[ , c("col1","col3")], 2, max)
  
  dados_tidyverse %>% summarise(max_col1 = max(col1), max_col3 = max(col3))
  
  dados_data_table[ , .(max_col1 = max(col1), 
                        max_col3 = max(col3))]
  
  
# Criando sumarizações por grupo -----
  #aggregate(), group_by() e	[ , , by = ...]
  
  aggregate(dados_rbase[,'col1'], by = list(dados_rbase$col2), sum) 
  
  dados_tidyverse %>% group_by(col2) %>% summarise(col5 = sum(col1))
  
  dados_data_table[ , .(col5 = sum(col1)), by = col2 ] 
  
  
  
# ----- Extras -----
# Pivotagem (de colunas para linhas) -----
  #reshape(), pivot_longer() e	melt()

# Pivotagem (de linhas para colunas) -----
  #reshape(), pivot_wider() e dcast()

# Unindo tabelas -----
  #merge(), left_join() e DT1[ DT2, on = ...]
  
# ----- Referências -----   
  
  # comparação entre os dialetos -----
    # https://github.com/mayer79/data_preparation_r
  
  # data.table + tidyverse (dplyr) -----
    #Existe um pacote chamado dtplyr que fornece um backend data.table para
    # o pacote tidyverse -- mais especificamente para o pacote dplyr do tidyverse.  
    # Com este pacote podemos escrever um código dplyr e este é automaticamente 
    # traduzido para o código data.table. Garantindo os ganhos de legibilidade 
    # do dplyr, com a superioridade de performance do data.table. 
    #Para mais informações consulte: https://dtplyr.tidyverse.org/
  
  # disclaimer sobre as opções apresentadas -----
    # Como dito inicialmente, esta lista não contempla todas as diferentes 
    # maneiras de escrever cada uma das ações acima, particularmente no caso
    # do Rbase, em que, me parece, que existem dezenas de maneiras de aplicar
    # uma mesma ação.A proposta aqui é apenas compartilhar uma visão inicial
    # sobre as diferenças.
  
  # Por que seguireos com o tidyverse? -----
    # Tanto pela legibilidade dos códigos quanto pela comunidade madura, e hoje,
    # a maior do R. De modo que independente da introdução que será feita aqui,
    # você terá à disposição uma série de conteúdos gratuitos e acessíveis 
    # para poder seguir evoluindo na linguagem R :)
