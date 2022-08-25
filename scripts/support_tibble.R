
# Script de Revisão - Dialetos para manipulação de dados no R


    #dataset
        (titanic <- titanic::titanic_train)
    
        #note como na versão tibble o output é mais clean
        tibble(titanic)
        #mas a função que transforma em tibble existe em vários pacotes,
        #inclusive essa mudança pode ser feita de outras formas, p.e.:
        titanic <- as_tibble(titanic)
        # se não tivessemos carregado a biblioteca do tidyverse, ou o dplyr,
        # a função precisaria ser chamada da seguinte forma:
        titanic <- dplyr::as_tibble(titanic)
    
               