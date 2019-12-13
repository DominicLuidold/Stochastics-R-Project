hist(data[,"Gesamteindruck"],breaks = c(1,2,3,4,5), xlab ="Schulnoten", main = "Histogram of Gesamteindruck")

hist(data[,"Raum"],breaks = c(1,2,3,4,5), xlab ="Schulnoten",  main = "Histogram of Schulnoten ")

hist(data[,"Termin"],breaks = c(1,2,3,4,5), xlab ="Schulnoten",  main = "Histogram of Termin ")

hist(data[,"Unterricht.abwechslungsr"],breaks = c(1,2,3,4,5), xlab ="Unterricht.abwechslungsr",  main = "Histogram of Unterricht.abwechslungsr")

hist(data[,"Unterricht.motivierend"],breaks = c(1,2,3,4,5), xlab ="Unterricht.motivierend",  main = "Histogram of Unterricht.motivierend ")

hist(data[,"Unterricht.Fragen"],breaks = c(1,2,3,4,5), xlab ="Unterricht.Fragen",  main = "Histogram of Unterricht.Fragen")

hist(data[,"Unterricht.strukturiert"],breaks = c(1,2,3,4,5), xlab ="Unterricht.strukturiert",  main = "Histogram of Unterricht.strukturiert ")

hist(data[,"Vorlesung.verstaendlich"],breaks = c(1,2,3,4,5), xlab ="Vorlesung.verstaendlich",  main = "Histogram of Vorlesung.verstaendlich ")

hist(data[,"Vorlesung.Geschwindigkeit"],breaks = c(1,2,3,4,5), xlab ="Vorlesung.Geschwindigkeit",  main = "Histogram of Vorlesung.Geschwindigkeit")

hist(data[,"Vorlesung.Praxis"],breaks = c(1,2,3,4,5), xlab ="Vorlesung.Praxis",  main = "Histogram of Vorlesung.Praxis ")

hist(data[,"Uebung.Beispiele"],breaks = c(1,2,3,4,5), xlab ="Uebung.Beispiele",  main = "Histogram of Uebung.Beispiele ")

hist(data[,"Uebung.schwierig"],breaks = c(1,2,3,4,5), xlab ="Uebung.schwierig",  main = "Histogram of Uebung.schwierig ")


x <- c(data[,"Uebung.schwierig"], 4)


barplot(x)

#iterate throw all lines
for (v in 1:ncol(data)) {
    print(v)
    print (median(data[,v], na.rm = TRUE))
    cat("\n")
}
