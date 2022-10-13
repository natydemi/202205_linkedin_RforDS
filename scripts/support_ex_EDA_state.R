
# Revisando Estruturas de Dados -----
    #No R existem 6 tipos de dados, em geral trabalhamos com 4: character > numeric > integer > logical
    #Estes dados podem ser organizados em 5 estruturas: vetor atômico, matriz, array, data.frame e listas

# ::::: practice: manuseando dados (bases state) -----
    state.abb
    state.area
    state.center
    state.division
    state.name
    state.region
    state.x77
    
        #qual dos datasets acima é uma matriz?
          is.matrix(state.x77)
          class(state.x77)
        #o que são os nomes à esquerda? como acessa-los?
          rownames(state.x77)
        #retorne as linhas de "Virginia" e "Colorado"
          state.x77[rownames(state.x77) %in% c("Virginia", "Colorado"),]
        #retorne as colunas de "Population" e "Income"
          state.x77[,colnames(state.x77) %in% c("Population", "Income")]
          
        #transforme todos os datasets em um data frame chamado state
        state <- data.frame(state.abb, state.area, state.division, 
                     state.name, state.region, state.x77, state.center)
        
        #se tivessemos transformado em matrix, qual seria o problema?
          cbind(state.abb, state.area) #viraria matriz
            #no caso de querer combinar empilhar por linhas 
            rbind(state.abb, state.area)
        
        #acesse a coluna x da base state.center das três formas abaixo, qual a diferença entre elas? 
           # state.center$x
            class(state.center$x)
           # state.center[["x"]]
            class(state.center[["x"]])
           # state.center["x"]
            class(state.center["x"])
          
        #voltando aos dados state, exclua as colunas "repetidas", i.e. colunas que contenham as mesmas informações
        #quantos estados possuem em cada região?
          state <- state[,!(colnames(state) %in% c("Area", "state.name" ))]
          
        #qual state.division possui a maior renda (`Income`)? E a menor?
          state[state$Income == 6315,"state.division"]
          state[state$Income == max(state$Income),"state.division"]
          as.character(state[state$Income == max(state$Income),"state.division"])

        #as variáveis `Illiteracy` e `Murder` são correlacionadas?
          cor(state$Illiteracy, state$Murder)
          
        #considerando todas as colunas numéricas, qual é a mais correlacionada com a variável `Murder`?
          cor(state)
          cor(state[,!(colnames(state) %in% c("state.region","state.abb", "state.name", "state.division"))])
          
        #adicione uma coluna que tenha a contagem dos estados
          state <- data.frame(state, contagem = 1:nrow(state))
          
        #Visualize a versão final do dataset criado
          View(state)
          
