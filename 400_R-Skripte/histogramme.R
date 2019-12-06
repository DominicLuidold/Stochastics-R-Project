hist(data[,"Gesamteindruck"], xlab ="Schulnoten", main = "Histogram of Gesamteindruck")

hist(data[,"Raum"], xlab ="Schulnoten",  main = "Histogram of Schulnoten ")

hist(data[,"Termin"], xlab ="Schulnoten",  main = "Histogram of Termin ")

hist(data[,"Unterricht.abwechslungsr"], xlab ="Unterricht.abwechslungsr",  main = "Histogram of Unterricht.abwechslungsr")

hist(data[,"Unterricht.motivierend"], xlab ="Unterricht.motivierend",  main = "Histogram of Unterricht.motivierend ")

hist(data[,"Unterricht.Fragen"], xlab ="Unterricht.Fragen",  main = "Histogram of Unterricht.Fragen")

hist(data[,"Unterricht.strukturiert"], xlab ="Unterricht.strukturiert",  main = "Histogram of Unterricht.strukturiert ")

hist(data[,"Vorlesung.verstaendlich"], xlab ="Vorlesung.verstaendlich",  main = "Histogram of Vorlesung.verstaendlich ")

hist(data[,"Vorlesung.Geschwindigkeit"], xlab ="Vorlesung.Geschwindigkeit",  main = "Histogram of Vorlesung.Geschwindigkeit")

hist(data[,"Vorlesung.Praxis"], xlab ="Vorlesung.Praxis",  main = "Histogram of Vorlesung.Praxis ")

hist(data[,"Uebung.Beispiele"], xlab ="Uebung.Beispiele",  main = "Histogram of Uebung.Beispiele ")

hist(data[,"Uebung.schwierig"], xlab ="Uebung.schwierig",  main = "Histogram of Uebung.schwierig ")


x <- c(data[,"Uebung.schwierig"], 4)

barplot(x)

#iterate throw all lines
for (v in 1:ncol(data)) {
    print(v)
    print (median(data[,v], na.rm = TRUE))
    cat("\n")
}
