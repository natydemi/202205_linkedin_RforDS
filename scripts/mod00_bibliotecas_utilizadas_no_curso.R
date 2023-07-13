
# versão do R ----- 

  #os videos foram gravados com a versão: 4.2.1
  #e todos os códigos foram validados para até o update: 4.3.1

  #de toda você não deve ter problemas para trabalhar com versões mais recentes


# bibliotecas/pacotes -----

  # Segue abaixo a lista de instalações considerando a ordem em 
  # que os pacotes são adicionados ao curso 

  pacotes_modulos <- c(
                  #mod01 - guiaDeBolso
                    "praise",
                    "dplyr", 
                    "magrittr",
                    "tidyverse",
                    "data.table",
                  #mod03 - descrição
                    "dados",
                  #mod04 - exploração
                    "janitor",
                    "inspectdf",
                    "skimr",
                    "ggridges",
                    "GGally",
                  #mod06 - visualizações
                    "titanic",
                    "plotly",
                    "treemapify",
                    "DT",
                  #mod07 - preProcessamento
                    "patchwork",
                    "naniar",
                  #mod09 - comunicação
                    "flexdashboard",
                    "kableExtra"
                     )
  install.packages(pacotes_modulos) 

  
# observações :
  # 1) alguns pacotes são instalados automaticamente a depender da ação feita, 
  # caso do rmarkdown que é instalado pelo RStudio ao compilarmos arquivos .Rmd, 
  # ou pacotes que são instalados como dependencias de outros pacotes.  
  # E por isso não constam na lista acima.
  
  # 2) a instalação do tidyverse garante uma série de outros pacotes, 
  # como por exemplo o "dplyr" e o "magrittr", contudo estes pacotes constam 
  # na lista acima pois são utilizados antes da instalação do tidyverse.
  
  # 3) existem uma série de outros pacotes que são citados ao longo do curso, 
  # porém na lista acima constam apenas as bibliotecas que são efetivamente
  # utilizadas ao longo do curso 
  