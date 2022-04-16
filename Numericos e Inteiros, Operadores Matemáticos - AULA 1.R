#VARIÁVEIS NUMÉRICAS

# CLASSE DE DADOS: Númerico e Internos

class(5)# Função utilizada para conhecer a classe

str(4) # Variável utilizada para se conhecer a estrutura

is.numeric(5) #Verificando se a variável é númerica

is.integer(5) #Nesse caso, para nos certificamos de que uma variavel será inteira.
# devemos escrevê-la da seguinte forma:

is.integer(5L) #A presença do "L" indica e reiteira ao R que temos um valor inteiro.
# sem casa decimais. Veja abaixo:

is.integer(5.0L) # Perceba que temos uma resposta "TRUE": entretando,
#nos é dado um alerta, uma vez que o ponto não é necessário

class(5L)

# PRINCIPAIS OPERADORES MATEMÁTICOS

1 + 1 # soma

1 * 1 # Multiplição

10 / 2 #Divisão

20 - 10 #Subtração

10^2 #Potência

10**2 #Potência tambem

sqrt(4) #Raiz quadrada

4^(0.5) # Raiz quadrada

10 %% 4 #Determina o resto da divisão

pi #Valor do pi

log10(5) #Log na base 10
log2(5) # Log na base 2
log(5) # LN de 5 - base euler
log (5, base = 2)
##EXEMPLOS DE FORMULAS

#Escreva a equação 1 = x^2 + y^2 ------> Circunferência de Raio 1
x^2 + y^2 = 1
x**2 + y**2 = 1

# Escreva a equação de Bháskara com os seguintes dados:
# 4x^2 + 10x + 2 = 0

a <- 4
b <- 10
c <- 2

(-b+(b^2-4*a*c)^0.5/(2*2)) # Buscando a 1/ raiz