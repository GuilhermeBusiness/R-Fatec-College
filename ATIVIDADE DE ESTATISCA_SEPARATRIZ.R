#EXERCICIO 1

#FOI REALIZADA A MONTAGEM DO DATA FRAME PARA ANALISE

notas <-  factor(c(2,2,2,4,4,4,4,4,5,5,5,5,5,5,5,5,7,7,7,7,7,7,10,10))
notas_fac <- cumsum(summary(notas))


dados <- data.frame(levels(notas),summary(notas),notas_fac)
colnames(dados)<- c("NOTAS","NOTAS-FI", "FAC")
row.names(dados)<- c(1,2,3,4,5)

#CALCULO DAS POSIÇÕES DO FAC PARA ACHAR A NOTA DE CADA SEPARATRIZ

Q1 <- 0.25 * 24 # POSSIÇÃO 6° LOGO A NOTA É A 4 DE ACORDO COM DATAFRAME
Q3 <- 0.75 * 24 # POSIÇÃO 18° LOGO A NOTA É 7 DE ACORDO COM O DATAFRAME
D4 <- 0.40 * 24 # POSIÇÃO 9.6° LOGO A NOTA É 5 DE ACORDO COM DATA FRAME
K4 <- 0.80 * 24 # POSIÇÃO 19.2° LOGO A NOTA É 7 DE ACORDO COM DATA FRAME
P60 <- 0.60 * 24 # POSIÇÃO 14.4 LOGO A NOTA É 5 DE ACORDO COM DATA FRAME

resposta1 <- data.frame(4,7,5,7,5)
colnames(resposta1) <- c("Q1","Q3","D4","K4","P60")

###############################################################################

#EXERCICIO 2

#FOI REALIZADA A MONTAGEM DO DATA FRAME PARA ANALISE


filhotes <-  factor(c(0,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,5,5))
filhotes_fac <- cumsum(summary(filhotes))


dados2 <- data.frame(levels(filhotes),summary(filhotes),filhotes_fac)
colnames(dados2)<- c("FILHOTES","FILHOTES-FI", "FAC")
row.names(dados2)<- c(1,2,3,4,5,6)

#CALCULO DAS POSIÇÕES DO FAC PARA ACHAR A NOTA DE CADA SEPARATRIZ

D1 <- 0.10 * 30 # POSSIÇÃO 3° LOGO A NOTA É A 1 DE ACORDO COM DATAFRAME
D9 <- 0.90 * 30 # POSIÇÃO 27° LOGO A NOTA É 4 DE ACORDO COM DATA FRAME
Q1 <- 0.25 * 30 # POSIÇÃO 7.5° LOGO A NOTA É 2 DE ACORDO COM DATA FRAME
Q3 <- 0.75 * 30 # POSIÇÃO 22.5° LOGO A NOTA É 4 DE ACORDO COM DATA FRAME

resposta2 <- data.frame(1,4,2,4)
colnames(resposta2) <- c("D1","D9","Q1","Q3")

###############################################################################
#EXERCICIO 3

kg <- c(58,61,61,65,65,66,66,67,67,68,71,71,71,72,73,80,90,100,55,
             50,47,78,98,65,69,82,72,68,61,76)


IC <- (max(kg) - min(kg)) / length(kg)^0.5

#ESCOLHER DE 10 EM 10

intervalo <- c("45|--55","55|--65","65|--75","75|--85","85|--95",
               "95|--105")
           kg <- c(sum(summary(factor(kg[which(kg >= 45 & kg < 55)]))),
                   sum(summary(factor(kg[which(kg >= 55 & kg < 65)]))),
                   sum(summary(factor(kg[which(kg >= 65 & kg < 75)]))),
                   sum(summary(factor(kg[which(kg >= 75 & kg < 85)]))),
                   sum(summary(factor(kg[which(kg >= 85 & kg < 95)]))),
                   sum(summary(factor(kg[which(kg >= 95 & kg < 105)]))))

kg_fac <- cumsum(kg)

dados3 <- data.frame(intervalo,kg,kg_fac)


P27 <- 0.27 * 30
P27 <- 65 + ((8.1 - 7) / 16) * 10

D8 <- 0.80 * 30
D8 <- 75 + ((24 - 23) / 4 ) * 10

resposta3 <- data.frame(P27,D8) #O D8 DEU UMA DIFERENÇA DE 1,25% DO GABARITO


