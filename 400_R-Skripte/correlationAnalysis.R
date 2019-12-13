
#Zusammenhang Verständlichkeit und Geschwindigkeit der Vorlesung
#Lineare Regressionsgerade bestimmen und 

vorlesung_verstaendlich <- data[, "Vorlesung.verstaendlich"]
vorlesung_geschwindigkeit <- data[, "Vorlesung.Geschwindigkeit"]


plot(vorlesung_verstaendlich, vorlesung_geschwindigkeit, main = "ZH Vorlesung.Verstaendlich und Vorlesung.Geschwindigkeit")
cor(vorlesung_verstaendlich, vorlesung_geschwindigkeit)

lm(vorlesung_geschwindigkeit ~ vorlesung_verstaendlich) #zeigt y=kx+d, Rheienfolge Ausgabe - Werte: d dann k
abline(lm(vorlesung_geschwindigkeit ~ vorlesung_verstaendlich)) #zeichnet lineare Regressionsgerade

#Berechnung des Korrelationsfaktors r

#Wenn Werte > 0.05 nach Shapiro-Test, kann diese "Pearson-Methode" verwendet werden, weil normalverteilt
shapiro.test(vorlesung_verstaendlich)
shapiro.test(vorlesung_geschwindigkeit)

cor.test(vorlesung_verstaendlich, vorlesung_geschwindigkeit, method = "pearson")

# r = 0.8119...


#Zusammenhang Umfang der Beispiele und Schwierigkeit
#lineare Regressionsgerade 
umfang_beispiele <- data[, "Uebung.Beispiele"]
schwierigkeit_beispiele <- data[, "Uebung.schwierig"]

plot(umfang_beispiele, schwierigkeit_beispiele, main = "ZH Uebung.Beispiele und Uebung.schwierig")
cor(umfang_beispiele, schwierigkeit_beispiele)

lm(schwierigkeit_beispiele ~ umfang_beispiele)
abline(lm(schwierigkeit_beispiele ~ umfang_beispiele))

#Korrelation
shapiro.test(umfang_beispiele)
shapiro.test(schwierigkeit_beispiele)

#Bei Variable umfang_beispiele ist shapiro-Test unter 0.05, also verwenden wir spearman-Methode

cor.test(umfang_beispiele, schwierigkeit_beispiele, method = "spearman")

# r = rho = 0.6139...    --Warnung kann ignoriert werden



#Zusammenhang Unterricht abwechlungsreich und motivierend
abwechlungsreich <- data[, "Unterricht.abwechslungsr"]
motivierend <- data[, "Unterricht.motivierend"]

plot(abwechlungsreich, motivierend, main = "Unterrich.abwechslungsreich und Unterricht.motivierend")
cor(abwechlungsreich, motivierend)

lm(motivierend ~ abwechlungsreich) #zeigt y=kx+d, Rheienfolge Ausgabe - Werte: d dann k
abline(lm(motivierend ~ abwechlungsreich)) #zeichnet lineare Regressionsgerade

#Berechnung des Korrelationsfaktors r

#Wenn Werte > 0.05 nach Shapiro-Test, kann diese "Pearson-Methode" verwendet werden, weil normalverteilt
shapiro.test(abwechlungsreich)
shapiro.test(motivierend)

cor.test(abwechlungsreich, motivierend, method = "pearson")

# r = 0.43488...


#Zusammenhang genügend Platz für Fragen und motivierend

motivierend <- data[, "Unterricht.motivierend"]
fragen <- data[, "Unterricht.Fragen"]

plot(motivierend, fragen, main = "ZH Unterricht.motivierend und Unterricht.Fragen")
cor(motivierend, fragen)

lm(fragen ~ motivierend)
abline(lm(fragen ~ motivierend))


#Berechnung des Korrelationsfaktors r

#Wenn Werte > 0.05 nach Shapiro-Test, kann diese "Pearson-Methode" verwendet werden, weil normalverteilt
shapiro.test(motivierend)
shapiro.test(fragen)

cor.test(motivierend, fragen, method = "pearson")

# r = 0.517...

#Zusammenhang abwechslungsreich und strukturiert

abwechlungsreich <- data[, "Unterricht.abwechslungsr"]
strukturiert <- data[, "Unterricht.strukturiert"]

plot(abwechlungsreich, strukturiert, main = "ZH Unterricht.abwechslungsreich und Unterricht.strukturiert")
cor(abwechlungsreich, strukturiert)

lm(strukturiert ~ abwechlungsreich)
abline(lm(strukturiert ~ abwechlungsreich))

#Berechnung des Korrelationsfaktors r

#Wenn Werte > 0.05 nach Shapiro-Test, kann diese "Pearson-Methode" verwendet werden, weil normalverteilt
shapiro.test(abwechlungsreich)
shapiro.test(strukturiert)

cor.test(abwechlungsreich, strukturiert, method = "pearson")

# r = 0.3625...

#Zusammenhang Termin & Zeit und Geschwindigkeit im Unterricht

termin <- data[, "Termin"]
geschwindigkeit <- data[, "Vorlesung.Geschwindigkeit"]

plot(termin, geschwindigkeit, main = "ZH Termin und Vorlesung.Geschwindigkeit")
cor(termin, geschwindigkeit)

lm(geschwindigkeit ~ termin)
abline(lm(geschwindigkeit ~ termin))

#Berechnung des Korrelationsfaktors r

#Wenn Werte > 0.05 nach Shapiro-Test, kann diese "Pearson-Methode" verwendet werden, weil normalverteilt
shapiro.test(termin)
shapiro.test(geschwindigkeit)

cor.test(termin, geschwindigkeit, method = "spearman")

# r = rho = 0.0695...


#Zusammenhang Gesamteindruck und Schwierigkeit im Unterricht

gesamteindruck <- data[, "Gesamteindruck"]
schwierigkeit <- data[, "Uebung.schwierig"]

plot(gesamteindruck, schwierigkeit, main = "ZH Gesamteindruck und Uebung.schwierig")
cor(gesamteindruck, schwierigkeit)

lm(schwierigkeit ~ gesamteindruck)
abline(lm(schwierigkeit ~ gesamteindruck))

#Berechnung des Korrelationsfaktors r

#Wenn Werte > 0.05 nach Shapiro-Test, kann diese "Pearson-Methode" verwendet werden, weil normalverteilt
shapiro.test(gesamteindruck)
shapiro.test(schwierigkeit)

cor.test(gesamteindruck, schwierigkeit, method = "pearson")

# r = 0.6834...
