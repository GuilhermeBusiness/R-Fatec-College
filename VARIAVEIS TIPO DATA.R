# variasis - Datas
# Ele entende a data na ordem Americana
as.Date("2015-10-20") #Dessa forma ele entende que é uma data

"2020-02-10" == as.Date("2020-02-10") # Ele entende o texto como igual - YY-MM-DD

class("2020-02-10") == class(as.Date("2020-02-10")) # ELE ENTENDE QUE AS SÃO CLASSES DIFERENTES

hoje <- as.Date("2020-01-15")
n_past <- as.Date("2018-07-19")

hoje - n_past # CALCULANDO A DIFERENÇA ENTRE DIAS

install.packages("lubridate")
library(lubridate)

lubridate::day(hoje) # verificando o dia
lubridate::month(hoje) # verificando o mês
lubridate::year(hoje) # verificando o ano
ymd(hoje) # Pega o período todo
lubridate::semester(n_past) # Indentificando o semestre
weekdays(n_past) # Dá o nome do dia da semana 
as.duration(hoje- n_past)
today() #Data de hoje
now() #Agora

#Criando uma sequência de datas. Se assemelha muito a um vetor

Ano_2020_dia <- seq(as.Date("2020-01-01"), as.Date("2020-12-31"), by = "1 day") # Por dia
Ano_2020_15na <- seq(as.Date("2020-01-01"), as.Date("2020-12-31"), by = "15 day") # 15 dias
Ano_2020_21dias <- seq(as.Date("2020-01-01"), as.Date("2020-12-31"), by = "3 week") # 21 dias

#Vamos aplicar as mesmas funções de antes agora

dias<- day(Ano_20_dia)
meses <- month(Ano_2020_dia)
anos <- year(Ano_20_dia)

#Converter um formato (YYYY-MM-DD)
x <- "10/02/2019" # Formato Brasileiro
as.Date(x, format = "%d/%m/%Y" ) # Conversão para o americano

y <- 10022019 #10 de fev 2019
dmy(y)

y<-20190210
ymd(y)
