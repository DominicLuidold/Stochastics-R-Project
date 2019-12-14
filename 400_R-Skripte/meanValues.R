#Durchschnitt (arithmetisches Mittel) mit mean()
#Häufigster Wert (modus) mit mode()
#Zentralwert (median) mit median()

#Gesamteindruck
mean(data[,"Gesamteindruck"], na.rm = TRUE)
mode(data[,"Gesamteindruck"])
median(data[,"Gesamteindruck"], na.rm = TRUE)

#Organisatorisch
organisatorisch <- c(data[,"Raum"],data[,"Termin"])
mean(organisatorisch, na.rm = TRUE)
mode(organisatorisch)
median(organisatorisch, na.rm = TRUE)

#Unterrichtsform
unterrichtsform <- c(data[,"Unterricht.abwechslungsr"],data[,"Unterricht.motivierend"],data[,"Unterricht.Fragen"],data[,"Unterricht.strukturiert"])
mean(unterrichtsform, na.rm = TRUE)
mode(unterrichtsform)
median(unterrichtsform, na.rm = TRUE)

#Vorlesung
vorlesung <- c(data[,"Vorlesung.verstaendlich"],data[,"Vorlesung.Geschwindigkeit"], data[,"Vorlesung.Praxis"])
mean(vorlesung, na.rm = TRUE)
mode(vorlesung)
median(vorlesung, na.rm = TRUE)

#Übungen
uebungen <- c(data[,"Uebung.Beispiele"],data[,"Uebung.schwierig"])
mean(uebungen, na.rm = TRUE)
mode(uebungen)
median(uebungen, na.rm = TRUE)
