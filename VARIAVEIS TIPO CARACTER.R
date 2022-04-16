## AULA TIPOS DE VARIÁVEIS: Character e Logical

# 1.Characters: Resposaveis pela armazenação de strings (variáveis de texto)

"Oi"

"Olà, R!" #Quando iserimos aspas, declaramos uma string

class("Olà, R")# A classe ------> "character"
str("Olá, R!")# Verifica se é um character  

is.character("Olá, R!")

nome <- "Vinícius"
sobrenome <- "Siqueira"

print(nome) #Fazendo isso, imprimimos o resultado dentro da funçaõ nome
paste(nome,sobrenome) #A função paste é responsável por juntar strings!
paste (nome,sobrenome,sep = ",")# A função paste nos permite inserir separadores
paste(nome,sobrenome,sep = " , ")#Dando espaço, criamos um espaço entre os caracteres

#A funçaõ paste() vai além de somente juntar strings! Agora, iremos inserir números:

paste("O",nome,"tem",28,"anos de idade") #Podemos juntar diversos tipos de variáveis,
#criando frases interativas !

substr(nome,1,4) # Cortando strings --- Indique o início e o fim!

# 2. Trabalhando com números e logicals

class(2) #numeric
class("2") # character

2 == "2" #O R considera iguais - IGUALDADE

class(2) == class("2") # Mas entende que possum classes diferentes
class(2) != class("2") # São diferentes !

# ==  verifica igualdade
# =! verifica diferença

# uma vez qua as classes são diferentes, as formas de utilizar também serão!

2 +2 #Há resultado!
"2" + 2 # Há erro!
"2" + "2" # Há erro!

# Em relação a strings, temos que tomar cuidado com letras maiscúlas e minúsculas

"V" = "v"

startsWith("vinicius","v") # Função bastante útil em filtros!
startsWith("vinicius", "v")

# DICA DE PACOTE:
install.packages("stringr") # Instalando o pacote
library(stringr) # Ativando o pacote e suas funções
citation("stringr") # Visualizar citação/referência do pacote


