install.packages("rvest")
library(rvest)


#pagina a investigar 

pagcine <- "https://peliculaonlinehd.com/genero/estrenos/"

#leer pag de peliculas 
readpagcine<- read_html(pagcine)
#extaer nombres de las peliculas 
nodesname<- html_nodes(readpagcine,".data")
#extraer datos de pelicula 
nodesdatos<- html_nodes(readpagcine,".poster")
#limpiar texto 
nombrePeli<- html_text(nodesname)
datosVotos<- html_text(nodesdatos)

#extraer datos de votos
datosVotos<-gsub("Full HD","",datosVotos)
datosVotos<- as.numeric(datosVotos)
# generar tabla con nombres y votos 
tabla1<- table(nombrePeli)
tabla2<- table(datosVotos)

#guardar tabla
tabla<-as.data.frame(tabla1)
write.csv(tabla, file="TABLApag1.csv")
tabla<-as.data.frame(tabla2)
write.csv(tabla, file="TABLApag2.csv")

#puesto que no pude generar el for, se extrajo la información de las
#10 primeras pag de la categoria de generos estrenos.

pag2<-"https://peliculaonlinehd.com/genero/estrenos/page/2/"

readpag2<- read_html(pag2)
nodesname2<- html_nodes(readpag2,".data")
nodesdatos2<- html_nodes(readpag2,".poster")

nombre2<- html_text(nodesname2)
datos2<- html_text(nodesdatos2)
datos2<-gsub("Full HD","",datos2)
datos2<- as.numeric(datos2)


tabla3<- table(nombre2)
tabla4<- table(datos2)

tabla<-as.data.frame(tabla3)

write.csv(tabla, file="TABLApag3.csv")

tabla<-as.data.frame(tabla4)

write.csv(tabla, file="TABLApag4.csv")


pag3<-"https://peliculaonlinehd.com/genero/estrenos/page/3/"

readpag3<- read_html(pag3)
nodesname3<- html_nodes(readpag3,".data")
nodesdatos3<- html_nodes(readpag3,".poster")

nombre3<- html_text(nodesname3)
datos3<- html_text(nodesdatos3)
datos3<-gsub("Full HD","",datos3)
datos3<- as.numeric(datos3)


tabla5<- table(nombre3)
tabla6<- table(datos3)

tabla<-as.data.frame(tabla5)

write.csv(tabla, file="TABLApag5.csv")

tabla<-as.data.frame(tabla6)

write.csv(tabla, file="TABLApag6.csv")

pag4<-"https://peliculaonlinehd.com/genero/estrenos/page/4/"

readpag4<- read_html(pag4)
nodesname4<- html_nodes(readpag4,".data")
nodesdatos4<- html_nodes(readpag4,".poster")

nombre4<- html_text(nodesname4)
datos4<- html_text(nodesdatos4)
datos4<-gsub("Full HD","",datos4)
datos4<- as.numeric(datos4)


tabla7<- table(nombre4)
tabla8<- table(datos4)

tabla<-as.data.frame(tabla7)

write.csv(tabla, file="TABLApag7.csv")

tabla<-as.data.frame(tabla8)

write.csv(tabla, file="TABLApag8.csv")

pag5<-"https://peliculaonlinehd.com/genero/estrenos/page/5/"

readpag5<- read_html(pag5)
nodesname5<- html_nodes(readpag5,".data")

nodesdatos5<- html_nodes(readpag5,".poster")

nombre5<- html_text(nodesname5)
datos5<- html_text(nodesdatos5)
datos5<-gsub("Full HD","",datos5)
datos5<- as.numeric(datos5)


tabla9<- table(nombre5)
tabla10<- table(datos5)
tabla<-as.data.frame(tabla9)

write.csv(tabla, file="TABLApag9.csv")

tabla<-as.data.frame(tabla10)

write.csv(tabla, file="TABLApag10.csv")

pag6<-"https://peliculaonlinehd.com/genero/estrenos/page/6/"

readpag6<- read_html(pag6)
nodesname6<- html_nodes(readpag6,".data")
nodesdatos6<- html_nodes(readpag6,".poster")

nombre6<- html_text(nodesname6)
datos6<- html_text(nodesdatos6)
datos6<-gsub("Full HD","",datos6)
datos6<- as.numeric(datos6)


tabla11<- table(nombre6)
tabla12<- table(datos6)

tabla<-as.data.frame(tabla11)

write.csv(tabla, file="TABLApag11.csv")

tabla<-as.data.frame(tabla12)

write.csv(tabla, file="TABLApag12.csv")

pag7<-"https://peliculaonlinehd.com/genero/estrenos/page/7/"

readpag7<- read_html(pag7)
nodesname7<- html_nodes(readpag7,".data")
nodesdatos7<- html_nodes(readpag7,".poster")

nombre7<- html_text(nodesname7)
datos7<- html_text(nodesdatos7)
datos7<-gsub("Full HD","",datos7)
datos7<- as.numeric(datos7)


tabla13<- table(nombre7)
tabla14<- table(datos7)

tabla<-as.data.frame(tabla13)

write.csv(tabla, file="TABLApag13.csv")

tabla<-as.data.frame(tabla14)

write.csv(tabla, file="TABLApag14.csv")

pag8<-"https://peliculaonlinehd.com/genero/estrenos/page/8/"

readpag8<- read_html(pag8)
nodesname8<- html_nodes(readpag8,".data")
nodesdatos8<- html_nodes(readpag8,".poster")

nombre8<- html_text(nodesname8)
datos8<- html_text(nodesdatos8)
datos8<-gsub("Full HD","",datos8)
datos8<- as.numeric(datos8)


tabla15<- table(nombre8)
tabla16<- table(datos8)

tabla<-as.data.frame(tabla15)

write.csv(tabla, file="TABLApag15.csv")

tabla<-as.data.frame(tabla16)

write.csv(tabla, file="TABLApag16.csv")

pag9<-"https://peliculaonlinehd.com/genero/estrenos/page/9/"

readpag9<- read_html(pag9)
nodesname9<- html_nodes(readpag9,".data")
nodesdatos9<- html_nodes(readpag9,".poster")

nombre9<- html_text(nodesname9)
datos9<- html_text(nodesdatos9)
datos9<-gsub("Full HD","",datos9)
datos9<- as.numeric(datos9)


tabla17<- table(nombre9)
tabla18<- table(datos9)

tabla<-as.data.frame(tabla17)

write.csv(tabla, file="TABLApag17.csv")

tabla<-as.data.frame(tabla18)

write.csv(tabla, file="TABLApag18.csv")

pag10<-"https://peliculaonlinehd.com/genero/estrenos/page/10/"

readpag10<- read_html(pag10)
nodesname10<- html_nodes(readpag10,".data")
nodesdatos10<- html_nodes(readpag10,".poster")

nombre10<- html_text(nodesname10)
datos10<- html_text(nodesdatos10)
datos10<-gsub("Full HD","",datos10)
datos10<- as.numeric(datos10)


tabla19<- table(nombre10)
tabla20<- table(datos10)

tabla<-as.data.frame(tabla19)

write.csv(tabla, file="TABLApag19.csv")

tabla<-as.data.frame(tabla20)

write.csv(tabla, file="TABLApag20.csv")

#crear variables temporales de cada pag para comprar el nombre de la pelicula y la votacion 
Temporal <- data.frame(Peliculas=nombrePeli, Votos = datosVotos)
Temporal1 <- data.frame(Peliculas=nombre2, Votos= datos2)
Temporal2 <- data.frame(Peliculas=nombre3, Votos= datos3)
Temporal3 <- data.frame(Peliculas=nombre4, Votos= datos4)
Temporal4 <- data.frame(Peliculas=nombre5, Votos= datos5)
Temporal5 <- data.frame(Peliculas=nombre6, Votos= datos6)
Temporal6<- data.frame(Peliculas=nombre7, Votos= datos7)
Temporal7 <- data.frame(Peliculas=nombre8, Votos= datos8)
Temporal8 <- data.frame(Peliculas=nombre9, Votos= datos9)
Temporal9 <- data.frame(Peliculas=nombre10, Votos= datos10)

#genero tabla completa que contenga el nombre y el promedio de votos (1 a 10) 

tablamerge <- rbind(Temporal,Temporal1,Temporal2,Temporal3,Temporal4,Temporal5,Temporal6,Temporal7,Temporal8,Temporal9)

#generar grafico que entrega la informacion completa de la cantidad de peliculas que se asocian en la puntuacion de votos entre (1a10) 
GraficoVotos <- hist(tablamerge$Votos, main = "Ranking Votacion Peliculas", xlab = "Votos", ylab = "Frecuencia", col=rainbow(3))

#guardar tabla en csv
write.csv(tablamerge, file = "Ranking.csv")




