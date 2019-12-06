
#Lineare Regressionsgerade bestimmen und 

vorlesung_verstaendlich <- data[,"Vorlesung.verstaendlich"]
vorlesung_geschwindigkeit <- data[,"Vorlesung.Geschwindigkeit"]


plot(vorlesung_verstaendlich,vorlesung_geschwindigkeit)
cor(vorlesung_verstaendlich,vorlesung_geschwindigkeit)

lm(vorlesung_geschwindigkeit~vorlesung_verstaendlich) #zeigt y=kx+d, Rheienfolge Ausgabe - Werte: d dann k
abline(lm(vorlesung_geschwindigkeit~vorlesung_verstaendlich)) #zeichnet lineare Regressionsgerade

#Berechnung des Korrelationsfaktors r

#Wenn Werte > 0.05 nach Shapiro-Test, kann diese "Pearson-Methode" verwendet werden, weil normalverteilt
shapiro.test(vorlesung_verstaendlich)
shapiro.test(vorlesung_geschwindigkeit)

cor.test(vorlesung_verstaendlich, vorlesung_geschwindigkeit, method="pearson")

# r = 0.8119...


#lineare Regressionsgerade
umfang_beispiele <- data[,"Uebung.Beispiele"]
schwierigkeit_beispiele <- data[,"Uebung.schwierig"]

plot(umfang_beispiele, schwierigkeit_beispiele)
cor(umfang_beispiele, schwierigkeit_beispiele)

lm(schwierigkeit_beispiele~umfang_beispiele)
abline(lm(schwierigkeit_beispiele~umfang_beispiele))

#Korrelation
shapiro.test(umfang_beispiele)
shapiro.test(schwierigkeit_beispiele)

#Bei Variable umfang_beispiele ist shapiro-Test unter 0.05, also verwenden wir spearman-Methode

cor.test(umfang_beispiele, schwierigkeit_beispiele, method="spearman")

# r = rho = 0.6139...    --Warnung kann ignoriert werden