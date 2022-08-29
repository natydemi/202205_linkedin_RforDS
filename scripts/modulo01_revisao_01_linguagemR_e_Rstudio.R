
# Módulo 01 - Revisão - Linguagem R e RStudio

# Instalação -----

  # Instalação R
    # https://www.r-project.org/
    # https://cloud.r-project.org

  # RStudio
# O que é RStudio (empresa): https://www.rstudio.com/about/
# A IDE RStudio (software): https://www.rstudio.com/products/rstudio/ 
# Instalação: https://www.rstudio.com/products/rstudio/download/

# Rstudio Cloud -- alternativa ao Desktop
#https://rstudio.cloud/

# Referência 
#https://livro.curso-r.com/1-instalacao.html



# Um tour pela IDE Rstudio  -----

#O RStudio possui uma série de recursos que otimizam a análise de dados, 
# sendo a própria interface, a principal vantagem, visto os seus paines:

#*Console - painel onde os comandos são executados interativamente, 
# permitindo opções como autocompletar e consultas por meio da tecla ‘Tab’, 
# ou o acesso aos comandos já digitados via a tecla ‘Seta para cima’

#*Source - onde são abertos os scripts do R, ou seja, onde você irá 
# escrever o código - sendo necessário enviá-lo manualmente para o Console,
# isto é, para execução, quando desejado. Para abrir um script podemos  
# utilizar o point-and-click ‘File > New File > R Script’ 
# ou por meio do atalho Ctrl+Shift+N

#*Environment - lista dos objetos carregados e/ou criados ao longo da sessão

#*History - consulta do histórico de comandos

#*Files - acesso às pastas e arquivos do computador

#*Plots - visualização dos gráficos gerados

#*Packages - gerenciamento das bibliotecas instaladas

#*Help - menu de ajuda e visualização das documentações consultadas

#*Viewer - visualização dos relatórios e aplicativos criados

#*Connections - ferramentas para conexão com diferentes bancos de dados 

#*Tutorial - tutoriais de aprendizado -- disponível apenas em versões mais 
# recentes da IDE RStudio


#Todos os painéis possuem uma série de funcionalidades próprias, 
# sendo interessante que, conforme avance na sua utilização do R, volte a 
# explorar tais opções, como as abas Git e Jobs.

#A mesma dica de investigação vale para a barra de ferramentas do RStudio, 
# onde é possível encontrar desde recursos de codificação, como busca e 
# substituição, desenvolvimento de pacotes, ou Debug de código. 

#DICA: Um recurso interessante do RStudio é a personalização da interface: 
# acesse na barra superior a opção  `Tools > Global Options’, dentre
# as alternativas, recomendo a sessão `Appearance` e `Pane Layout`.



# Organização dos scripts  -----

#Textos precedidos por # são comentários (note a mudança na cor do texto),
# vale comentar que a indentação no R não é um pré requisito, mas sim
# uma boa prática, visto auxiliar na organização do código.

#ATALHO: selecione as linhas que você quer comentar e `ctrl + shift + c`

#DICA: um recurso interessante do RStudio são as seções, ou sections.
# Para conhecer digite: crtl + shift + R, e teste você mesmo! Você 
# pode acessar tais seções na parte superior direita do script, 
# ou na parte inferior esquerda.



# R como calculadora  -----

#Operações
#soma (o separador decimal no R é o ponto)
1 + 1.5

#subtração
7 - 2 

#divisão
9 / 3  

#multiplicação
100 * 10 

#potência (ponto e vírgula é equivalente a dar um enter entre linhas)
2^4 ; 2**4  

#resto da divisão de 10 por 3
10 %% 3 

#parte inteira da divisão de 10 por 3
10 %/% 3  

#O resultado foi precedido por `[1]`, o que faz referência à quantidade 
# de elementos do resultado. Aqui vale comentar que os contadores/index no R  
# são iniciados no `1`, e não no `0`, como ocorre em muitas outras linguagens. 

#Podemos também escrever o código no Editor (Source/R Script), e enviá-lo  
# para a execução no Console por meio do atalho ‘Ctrl + Enter’ ou
# pelo botão ‘Run’ do RStudio.

#Podemos ampliar as equações mantendo a notação básica de operações algébricas
#equação ok
(2 * ( 2 * ( 2 * (4-3))))

#equação não ok, ou seja, este comando retornará um erro! 
(2 * { 2 * [ 2 * (4-3)]})

#DICA: note que o comando com o erro é precedido de um 'X' em vermelho 
# no próprio script no RStudio 



# Operadores lógicos -----

#Considerando operadores lógicos, tendo como saída TRUE ou FALSE, temos:

#maior/menor
1 < 0 
1 > 0 

#menor/maior ou igual
1 <= 1 ; 1 >= 1 

#igual/diferente (igual são com DOIS simbolos seguidos)
1 == 1 
1 != 1 

#ATENÇÃO: ao digitarmos um comando incompleto no Console, o R mostrará  
# o símbolo `+` para iniciar um novo comando. Para desconsiderar os comandos  
# anteriores, ou seja, reiniciar o comando, basta pressionar a tecla ‘Esc’. 
#exemplo de comando incompleto
8 ==
  
  #Ao receber comandos desconhecidos, o R  retornará uma mensagem de erro
  #erro
  3 % 9

#DICA: para resgatar algum comando já digitado no Console, você 
# pode utilizar a tecla ‘seta para cima’. 



# Acessando Funções  -----

#Uma função no R é um conjunto de instruções organizadas e parametrizadas,
# visando a execução de uma tarefa.

#No R apenas com as funções builtins, podemos fazer desde gráficos e
# cálculos aritméticos, até análises descritivas e aplicação de
# modelos estatísticos (deixei alguns spoilers na última seção do script).

#Para consultar a lista de funções default no R:
builtins() 

#Os nomes das funções no R são, em geral, intuitivos
#aplicando a função exponencial ao número 1
exp(1)

#podemos ver o código da função ao digitar a função sem os parênteses
exp

#Uma das funções mais importantes no R é a função `help()`, 
# ou o seu operador equivalente `?`, que nos permitem acessar o help
# do objeto consultado, possibilidades de estilização, exemplos, etc
?log

#por default o log é calculado na base exponencial
log(10)

#e o resultado não é alterado mesmo se explicitarmos o argumento 'base'
log(10, base = exp(1))

#mas podemos altera-lo, no caso, para qualquer número positivo:
log(10, base = 10)

#Note que não foi necessário especificar o nome do primeiro argumento da 
# função em nenhum dos casos (`log(x=10)`).



# Criando objetos  -----

#Objetos no R são elementos que podem ser armazenados em variáveis, 
# como, por exemplo, dados ou funções. E podemos criar tais objetos 
# utilizando os sinais de atribuição `<-`, `=` ou até `->`.

#Os Objetos podem ser nomeados com letras, números, e os símbolos `.` e `_`.
# importante comentar que o R é case sensitive, ou seja, letras maiúsculas  
# e minúsculas são processados como caracteres diferentes.

#sintaxe: letras minúsculas
objeto <- 1 #atribuição da direita para a esquerda (RECOMENDADO)

#sintaxe: letras minúsculas com a primeira letra maiúscula
Objeto =  2 #atribuição da direita para a esquerda

#sintaxe: letras minúsculas, símbolo e número
3 -> objeto_1 #atribuição da esquerda para a direita

#Atribuição: a recomendação é trabalhar com `<-` para atribuição de objetos, 
# `=` para a especificação de parâmetros de funções e evitar o `->`.

#ATALHO: para inserir o símbolo `<-` no RStudio podemos utilizar 'alt + -'.

#Ao criar objetos, passamos a ter a informação que estes carregam 
# salvos na memória e podemos chama-los posteriormente  
sqrt(Objeto) 

#Podemos fazer operações entre elementos e objetos
#atribuindo um elemento diretamente
a <- 2; a

#ao rodar o comando, note que o a não é alterado
a + 1 
a

#para que a mudança seja salva, precisamos reatribuir o valor
a <- a + 1
a

#resultado de operações entre elementos
b <- 5 + a ; b

#excluindo o objeto a
rm(a); a

#operações entre outros objetos
c <-  b * (-1); c

#resultado da aplicação de funções
d <- abs(c); d

#Para listar todos os objetos disponíveis na sessão podemos utilizar 
# a função `ls()`. Enquanto que para excluir algum destes objetos temos 
# a função `rm(nome_do_objeto)`.

# Regras para nomear objetos    
#É possível trabalhar com objetos nomeados com sintaxes não padrão, 
# sendo, porém, necessário adicionar aspas ao objeto:

#definindo o objeto com sintaxe não padrão
`1¨ objeto c/ $int@xe que $&ria #inva!ida for@ da$ a$pa$` <- 6 

#aplicando-o em uma função (log na base 10)
log10(`1¨ objeto c/ $int@xe que $&ria #inva!ida for@ da$ a$pa$`)

#No R existem alguns nomes/termos reservados para representar casos 
# especiais, são eles:

#Not Available: constante lógica utilizada para representar dados faltantes.
NA

#Not a Number: objeto lógico representando indefinições matemáticas, 
#como log de números negativos.
NaN

#Infinite: conceito matemático (positivo ou negativo).
Inf; -Inf

#Null object: representa a ausência de informação, utilizada como 
#retorno de funções cujos valores são indefinidos.
NULL

#Visto a relevância de tais objetos, estes não podem ser reescritos. 
#Diferentemente de outras constantes
NA <- 0

pi
pi <- 0
pi

#Um tipo de objeto particularmente importante para quem trabalha com dados, 
# são as base de dados, vamos tomar como exemplo uma das bases default do R
mtcars

#para que esta base apareça como um objeto na aba "Environment" 
# podemos considerar:

mtcars <- mtcars


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


# ----- (avançado) Recursos de Programação  ----- 
# Estruturas de controle -----
#Estruturas de controle são blocos de programação, baseados em  
# parâmetros pré-definidos, que definem a direção a seguir. 
#O R possui todas as estruturas usualmente existentes em linguagens de 
# programação, e neste script vamos listar alguns dos principais. 

#Primeiramente vamos listar os principais operadores lógicos disponíveis:

#O console retorna TRUE (T) ou FALSE (F) se:
x != y #diferente que: para a negação de um elemento apenas `!x`
x | y #ou: retornando T/F para cada elemento das comparações
x || y #ou, retornando apenas um T/F (1ª comparação à esquerda do vetor)
x & y #e, retornando T/F para cada elemento das comparações
x && y #e, retornando apenas um T/F (1ª comparação à esquerda do vetor)
x %in% y #se os elementos à esquerda, um a um, estão contidos à direita

#Além das funções `any()` e `all()`, úteis no caso de vetores lógicos

#Considerando fluxos condicionais e de repetição:

#if: se a declaração feita entre parênteses for verdade, então 
# os comandos dentro das chaves `{}` serão executados: 
x <- 0

if(x != 0){
  print(x+1)
}

#

if(x != 0){
  print(x+1)
} else{print("não faça nada")}


#if-else: similar ao comando `if()`, porém seguido de um segundo bloco, 
# em que será avaliado se, e somente se, o resultado do primeiro bloco 
# for `FALSE`: 
x <- 15

if (x<=10) {
  print("x é menor ou igual a 10")
} else if (x>10 & x<20) {
  print("x está entre 10 e 20")
} else{
  print("x é maior ou igual a 20")
}

#ifelse: uma versão mais simples do if-else, em que especificamos 
# ambas as ações como parâmetro de uma função:
x <- "olar"
ifelse(x == "olar", "flor.do.campo", "xovens")


#for: uma sequência de instruções que são repetidas com cada um dos elementos especificados:
x <- 1:3

for(i in x){
  print(i)
}

# DICA: Podemos não utilizar as chaves caso as instruções sejam dadas 
# em uma única linha, após o `for`:
x <- 1:3

for(i in x) print(i)


#nested loops: de modo similar ao anterior temos o caso dos loops aninhados:
x <- 1:2; y <- c(1,10)

for(i in seq(x)){
  for(j in seq(y)) print(x[i]*y[j])
}

#while: repetição de um bloco de comandos até que certa condição não seja mais satisfeita:
i <- 1
while (i<=6){
  print(i*i)
  i = i+1
}

#além dos comandos citados, existem ainda funções como: 
#`break()`, que pode ser utilizada para interromper um loop e dar 
# continuidade ao fluxo, ou next()` que descontinua uma interação 
# particular, e pula para a próxima. 


# Criando suas próprias funções -----
#Estes recursos vão te permitir garantir que, independente do arsenal 
# que o R possua em termos de bibliotecas e funções, você possa implementar 
# as suas próprias funções. 

#No R podemos criar as nossas próprias funções, por meio do objeto function(), 
# isto permite a automação de atividades de forma: estruturada, consistente, 
# escalonável e reprodutível. Para criar tais funções existem três aspectos 
# que devemos considerar: 
#1) o nome do objeto criado para a função ser armazenada (que terá 
# papel fundamental na legibilidade do código), 
#2) os argumentos que a função pode, ou não, possuir, e 
#3) o corpo da função, onde é definido o que a função faz e 
# o seu retorno, isto é, o seu output.

#modelo de uma função:
#nome_funcao <- function(arg_1, arg_2, ...){
#    corpo da função
#}

#ex. 1
funcao_mean <- function(vetor){
  output <- sum(vetor)/length(vetor)
  return(output)
}

#ex. 2
celcius_fahrenheit <- function(temp_c){
  temp_f <- (temp_c * 9/5) + 32
  temp_f #ou, equivalentemente, return(temp_f)
}

celcius_fahrenheit(temp_c = 25)
celcius_fahrenheit(25)

#ATENÇÃO: o R, por default, retorna a última linha do corpo da função, 
# ou seja, o seu output. Alternativamente, utilizamos a função `return()`, 
# de modo que o output independa da sua posição no corpo da função.

#Quanto aos argumentos, assim como ocorre nas funções *built-in*, podemos 
# especificar valores default. Adicionalmente, quando o corpo da função 
# estiver na mesma linha do comando `function`, o uso de chaves não é 
# necessário - assim como foi descrito para o comando `for()`:

#exemplos
ex_function <- function(x, y=1) x+y
ex_function(1,0)
ex_function(1)    

#Ao definir funções, podemos salvá-las em scripts diferentes e chamá-las 
# (carregá-las), por meio da função `source()`. Sendo necessário 
# especificar o nome do script, acompanhado do nome do diretório em que o  
# script se encontra caso o script não se encontre no mesmo diretório.

# Ambientes -----        
#Funções possuem os seus próprios ambientes, também denominados `environments`, 
# ou seja, sua própria coleção de objetos (funções, variáveis, etc). 
# Assim os cálculos realizados dentro de uma função não alteram e não são  
# registrados pelos demais ambientes. Contudo, o `environment` de uma função  
# consegue consultar o ambiente em que foi definida (`parent environment`),  
# bem como o ambiente pai deste, e assim por diante, de forma hierárquica. 
# Tal recurso é utilizado no contexto em que algum objeto necessário para 
# a execução da função não é encontrado.

#exemplo
temp_c <- 25

celcius_fahrenheit <- function(){
  temp_f <- (temp_c * 9/5) + 32
  temp_f #ou, equivalentemente, return(temp_f)
}

temp_f
celcius_fahrenheit()
temp_f

#Vale ressaltar que o exemplo acima foi desenhado visando ilustrar como 
# o R lida com os funções e seus ambientes. Porém, em termos práticos, é 
# extremamente desaconselhável deixar que a função dependa de parâmetros 
# externos ao seu próprio `environment`. Idealmente, todas as dependências 
# devem ser especificadas e passadas como argumentos da função.


# ::::: Hands-on -----
#No RStudio Learn Primers: #https://rstudio.cloud/learn/primers 
# você encontrará diversos exercícios desde `Write Functions` até XXX.


