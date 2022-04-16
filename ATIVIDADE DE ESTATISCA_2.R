install.packages("psych")
library(psych)

statmod <- function(x) {
        z <- table(as.vector(x))
        names(z)[z == max(z)]
}

#EXERCICIO 1

kg_describe <-  sort(c(3,4,3.5,5,3.5,4,5,5.5,4,5))   

kg <-  factor(c(3,4,3.5,5,3.5,4,5,5.5,4,5))  

kg_fr <- summary(kg)/10*100 

kg_fm <- cumsum(summary(kg))

kg_fa <- kg_fm / 10 * 100


dados <- data.frame(summary(kg),kg_fr,kg_fm,kg_fa)
colnames(dados)<- c("KG - FI", "KG - FR(%)","KG - FM", "KG - FA(%)")

describe(kg_describe)

statmod(kg_describe)



#EXERCICIO 2

idade_describe <- sort(c(18,17,19,17,18,18,20,18,18,18,19,18,21,18,20,
                         18,20,18,18,19,18,19,19,19,18,19,19,21,19,19,
                         19,21,17,19,19,18,19,19,18,20,20,18,20,18,20,
                         20,19,19,21,18)) 

idade <-  factor(c(18,17,19,17,18,18,20,18,18,18,19,18,21,18,20,
                   18,20,18,18,19,18,19,19,19,18,19,19,21,19,19,
                   19,21,17,19,19,18,19,19,18,20,20,18,20,18,20,
                   20,19,19,21,18))  

idade_fr <- summary(idade)/50*100 

idade_fm <- cumsum(summary(idade))

idade_fa <- idade_fm / 50 * 100


dados2 <- data.frame(summary(idade),idade_fr,idade_fm,idade_fa)
colnames(dados2)<- c("IDADE - FI", "IDADE - FR(%)","IDADE - FM", "IDADE - FA(%)")

describe(idade_describe)

statmod(idade_describe)


#EXERCICIO 9

hor_describe <- c(5,4,8,8,7,6,6,8,8,12)  

hor <-  factor(c(5,4,8,8,7,6,6,8,8,12))  

hor_fr <- summary(hor)/50*100 

hor_fm <- cumsum(summary(hor))

hor_fa <- hor_fm / 50 * 100


dados3 <- data.frame(summary(hor),hor_fr,hor_fm,hor_fa)
colnames(dados3)<- c("HORARIO - FI", "HORARIO - FR(%)","HORARIO - FM", "HORARIO - FA(%)")

describe(hor_describe)
statmod(hor_describe)

#EXERCICIO 8

pecas <-  c(6,7,9,10,12,14,15,15,15,16,
           16,17,18,18,18,18,19,19,20,20,
           20,20,21,21,21,22,22,23,24,25,
           25,26,26,28,28,30,32,32,35,39)

IC <- (max(pecas) - min(pecas)) / length(pecas)^0.5

intervalo <- c("6|--13","13|--20","20|--27","27|--34","34|--41")

pecas   <- c(sum(summary(factor(pecas[which(pecas >= 6 & pecas < 13)]))),
             sum(summary(factor(pecas[which(pecas >= 13 & pecas < 20)]))),
             sum(summary(factor(pecas[which(pecas >= 20 & pecas < 27)]))),
             sum(summary(factor(pecas[which(pecas >= 27 & pecas < 34)]))),
             sum(summary(factor(pecas[which(pecas >= 34 & pecas < 41)]))))

pecas_fr <- pecas / 40 * 100

pecas_fm <- cumsum(pecas)

pecas_fa <- pecas_fm / 40 * 100

dados4 <- data.frame(intervalo,pecas, pecas_fr, pecas_fm, pecas_fa)
colnames(dados4)<- c("PEÇAS - FI", "PEÇAS - FR(%)","PEÇAS - FM", "PEÇÃS - FA(%)")

pecas <- sort(c(6,7,9,10,12,14,15,15,15,16,
                16,17,18,18,18,18,19,19,20,20,
                20,20,21,21,21,22,22,23,24,25,
                25,26,26,28,28,30,32,32,35,39))
describe(pecas)
statmod(pecas)

#EXERCICIO 7

lampada <- c(150,210,309,270,180,246,285,195,210,248,
           199,250,290,195,301,221,210,190,210,259)

IC2 <- (max(lampada) - min(lampada)) / length(lampada)^0.5

intervalo2 <- c("150|--190","190|--230","230|--270","270|--310")

lampada   <- c(sum(summary(factor(lampada[which(lampada >= 150 & lampada < 190)]))),
             sum(summary(factor(lampada[which(lampada >= 190 & lampada < 230)]))),
             sum(summary(factor(lampada[which(lampada >= 230 & lampada < 270)]))),
             sum(summary(factor(lampada[which(lampada >= 270 & lampada < 310)]))))

lampada_fr <- lampada / 20 * 100

lampada_fm <- cumsum(lampada)

lampada_fa <- lampada_fm / 20 * 100

dados5 <- data.frame(intervalo2, lampada, lampada_fr, lampada_fm, lampada_fa)
colnames(dados5)<- c("TEMPO - FI", "TEMPO - FR(%)","TEMPO - FM", "TEMPO - FA(%)")


lampada <- c(150,210,309,270,180,246,285,195,210,248,
             199,250,290,195,301,221,210,190,210,259)
describe(lampada)
statmod(lampada)

#EXERCICIO 5

faltas <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,
            2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
            2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,
            4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5
)
describe(faltas)
statmod(faltas)


