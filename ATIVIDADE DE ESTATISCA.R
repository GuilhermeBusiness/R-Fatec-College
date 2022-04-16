#CRIADO POR GUILHERME VINÍCIUS CINTRA RIBEIRO
#ALUNO DE ADS FATEC-FRANCA
#DISCIPLINA DE ESTATISCA
#13/03/2021 ULTIMA ATUALIZAÇÃO

###########################################################################################

#EXERCICIO 1

acidentes <-   factor (c(6, 9, 2, 7, 0, 8, 2, 5, 4, 2,
               5, 4, 4, 4, 4, 2, 5, 6, 3, 7,
               3, 8, 8, 4, 4, 4, 7, 7, 6, 5,
               4, 7, 5, 3, 3, 1, 3, 8, 0, 6,
               5, 1, 2, 3, 3, 0, 5, 6, 6, 3)) 

acidentes_fr <- summary(acidentes)/50*100 

acidentes_fm <- cumsum(summary(acidentes))

acidentes_fa <- acidentes_fm / 50 * 100


dados <- data.frame(summary(acidentes),acidentes_fr,acidentes_fm, acidentes_fa)
colnames(dados)<- c("FREQUÊNCIA-FI", "FREQUÊNCIA - FR(%)","FREQUÊNCIA - FM", "FREQUÊNCIA - FA(%)")

##############################################################################################

#EXERCICIO 2

preco <-  factor(c(50,50,52,52,52,52,52,52,54,53,53,53,53,53,53,51,51,51,51,51)) 


preco_fr <- summary(preco)/20*100

preco_fm <- cumsum(summary(preco))

preco_fa <- preco_fm/20 * 100


dados2 <- data.frame(summary(preco),preco_fr,preco_fm,preco_fa)
colnames(dados2)<- c("QUANT_PREÇO-FI", "QUANT_PREÇO - FR(%)","QUANT_PREÇO - FM", 
                     "QUANT_PREÇO - FA(%)")

A <- sum(dados2$`QUANT_PREÇO - FR(%)`[4:5])
B <- sum(dados2$`QUANT_PREÇO - FR(%)`[3:4])
C <- dados2$`QUANT_PREÇO - FR(%)`[4:4]
D <- sum(dados2$`QUANT_PREÇO - FR(%)`[1:2])

resultado2 <- data.frame(A,B,C,D)
##############################################################################################

#EXERCICIO 3

peca <- factor (c(2,0,0,4,3,0,0,1,0,0,1,1,2,1,1,1,1,1,1,
  0,0,0,3,0,0,0,2,0,0,1,1,2,0,2,0,0,0,0,0, 
  0,0,0,0,0,0,0,1,0))

peca_fr <- summary(peca)/48 * 100

peca_fm <- cumsum(summary(peca))

peca_fa <- peca_fm/48 * 100


dados3 <- data.frame(summary(peca),peca_fr,peca_fm,peca_fa)
colnames(dados3)<- c("PEÇA_PREÇO-FI", "PEÇA_PREÇO - FR(%)","PEÇA_PREÇO - FM", 
                     "PEÇA_PREÇO - FA(%)")

AA <- dados3$`PEÇA_PREÇO - FR(%)`[2]
BB <- sum(dados3$`PEÇA_PREÇO - FR(%)`[3:4]) 
CC <- dados3$`PEÇA_PREÇO - FR(%)`[1]


resultado3 <- data.frame(AA,BB,CC)

##############################################################################################

#EXERCICIO 4

diaria <- c("15|--18","180|--210","210|--240","240|--270","270|--300",
          "300|--330","330|--360","360|--390","390|--420","420|--450","TOTAL")
n_apar <- c(3,8,10,13,33,40,35,30,16,12,200)

dados4 <- data.frame(diaria,n_apar)
colnames(dados4) <- c("DIÁRIAS (R$)","NÚMERO DE APARTAMENTOS")

AAA<- dados4$`NÚMERO DE APARTAMENTOS`[9] / dados4$`NÚMERO DE APARTAMENTOS`[11] * 100
BBB<- sum(dados4$`NÚMERO DE APARTAMENTOS`[5:8]) / dados4$`NÚMERO DE APARTAMENTOS`[11] * 100
CCC<- dados4$`NÚMERO DE APARTAMENTOS`[6] / dados4$`NÚMERO DE APARTAMENTOS`[11] * 100
DDD<- dados4$`NÚMERO DE APARTAMENTOS`[2] / dados4$`NÚMERO DE APARTAMENTOS`[11] * 100

resultado4 <- data.frame(AAA,BBB,CCC,DDD)

##############################################################################################

#EXERCICIO 5

erros <-  factor(c(0,1,0,1,0,0,0,0,2,3,0,1,2,3,4,0,0,0,1,4,1,1,0,0,3,5,1,0,0,1))

erros_fr <- summary(erros)/30 * 100

erros_fm <- cumsum(summary(erros))

erros_fa <- erros_fm/30 * 100


dados5 <- data.frame(summary(erros),erros_fr,erros_fm,erros_fa)
colnames(dados5)<- c("ERROS_ORT - FI", "ERROS_ORT - FR(%)","ERROS_ORT - FM", 
                     "ERROS_ORT - FA(%)")
##############################################################################################

#EXERCICIO 6

consumo <- c(32,40,22,11,34,40,16,26,23,31,27,10,38,17,13,
             45,25,10,18,23,35,22,30,14,18,20,13,24,35,29,
             33,48,20,12,31,39,17,58,19,16,12,21,15,12,20,
             51,12,19,15,41,29,25,13,23,32,14,27,43,37,21,
             28,37,26,44,11,53,38,46,17,36,28,49,56,19,11)

IC <- (max(consumo) - min(consumo)) / length(consumo)^0.5

#ESCOLHER ENTRE 4,5 E 6. VOU ESCOLHER O 5

intervalo <- c("10|--15","15|--20","20|--25","25|--30","30|--35",
               "35|--40","40|--45","45|--50","50|--55","55|--60")



consumo <- c(sum(summary(factor(consumo[which(consumo >= 10 & consumo < 15)]))),
             sum(summary(factor(consumo[which(consumo >= 15 & consumo < 20)]))),
             sum(summary(factor(consumo[which(consumo >= 20 & consumo < 25)]))),
             sum(summary(factor(consumo[which(consumo >= 25 & consumo < 30)]))),
             sum(summary(factor(consumo[which(consumo >= 30 & consumo < 35)]))),
             sum(summary(factor(consumo[which(consumo >= 35 & consumo < 40)]))),
             sum(summary(factor(consumo[which(consumo >= 40 & consumo < 45)]))),
             sum(summary(factor(consumo[which(consumo >= 45 & consumo < 50)]))),
             sum(summary(factor(consumo[which(consumo >= 50 & consumo < 55)]))),
             sum(summary(factor(consumo[which(consumo >= 55 & consumo < 60)]))))

consumo_fr <- consumo / 75 * 100

consumo_fm <- cumsum(consumo)

consumo_fa <- consumo_fm / 75 * 100

dados6 <- data.frame(intervalo,consumo,consumo_fr,consumo_fm,consumo_fa)

plot()