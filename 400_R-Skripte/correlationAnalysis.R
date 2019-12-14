# Zusammenhang: Vorlesung.verstaendlich und Vorlesung.Geschwindigkeit
vorlesung_verstaendlich <- data[, "Vorlesung.verstaendlich"]
vorlesung_geschwindigkeit <- data[, "Vorlesung.Geschwindigkeit"]

corValue <- cor(vorlesung_verstaendlich, vorlesung_geschwindigkeit, use = "complete.obs")
mainText <- paste("ZH Vorlesung.Verstaendlich und Vorlesung.Geschwindigkeit, cor:", round(corValue, 4))

plot(vorlesung_verstaendlich, vorlesung_geschwindigkeit, main = mainText)
abline(lm(vorlesung_geschwindigkeit ~ vorlesung_verstaendlich))

# Zusammenhang: Vorlesung.verstaendlich und Vorlesung.Praxis
vorlesung_verstaendlich <- data[, "Vorlesung.verstaendlich"]
vorlesung_praxis <- data[, "Vorlesung.Praxis"]

corValue <- cor(vorlesung_verstaendlich, vorlesung_praxis, use = "complete.obs")
mainText <- paste("ZH Vorlesung.verstaendlich und Vorlesung.Praxis, cor:", round(corValue, 4))

plot(vorlesung_verstaendlich, vorlesung_praxis, main = mainText)
abline(lm(vorlesung_praxis ~ vorlesung_verstaendlich))

# Zusammenhang: Uebung.Beispiele und Uebung.schwierig
umfang_beispiele <- data[, "Uebung.Beispiele"]
schwierigkeit_beispiele <- data[, "Uebung.schwierig"]

corValue <- cor(umfang_beispiele, schwierigkeit_beispiele, use = "complete.obs")
mainText <- paste("ZH Uebung.Beispiele und Uebung.schwierig, cor:", round(corValue, 4))

plot(umfang_beispiele, schwierigkeit_beispiele, main = mainText)
abline(lm(schwierigkeit_beispiele ~ umfang_beispiele))

# Zusammenhang: Unterricht.abwechslungsr und Unterricht.motivierend
abwechlungsreich <- data[, "Unterricht.abwechslungsr"]
motivierend <- data[, "Unterricht.motivierend"]

corValue <- cor(abwechlungsreich, motivierend, use = "complete.obs")
mainText <- paste("ZH Unterrich.abwechslungsreich und Unterricht.motivierend, cor:", round(corValue, 4))

plot(abwechlungsreich, motivierend, main = mainText)
abline(lm(motivierend ~ abwechlungsreich))

# Zusammenhang: Unterricht.motivierend und Unterricht.Fragen
motivierend <- data[, "Unterricht.motivierend"]
fragen <- data[, "Unterricht.Fragen"]

corValue <- cor(motivierend, fragen, use = "complete.obs")
mainText <- paste("ZH Unterricht.motivierend und Unterricht.Fragen, cor:", round(corValue, 4))

plot(motivierend, fragen, main = mainText)
abline(lm(fragen ~ motivierend))

# Zusammenhang: Unterricht.abwechslungsr und Unterricht.strukturiert
abwechlungsreich <- data[, "Unterricht.abwechslungsr"]
strukturiert <- data[, "Unterricht.strukturiert"]

corValue <- cor(abwechlungsreich, strukturiert, use = "complete.obs")
mainText <- paste("ZH Unterricht.abwechslungsreich und Unterricht.strukturiert, cor:", round(corValue, 4))

plot(abwechlungsreich, strukturiert, main = mainText)
abline(lm(strukturiert ~ abwechlungsreich))

# Zusammenhang: Gesamteindruck und Uebung.schwierig
gesamteindruck <- data[, "Gesamteindruck"]
schwierigkeit <- data[, "Uebung.schwierig"]

corValue <- cor(gesamteindruck, schwierigkeit, use = "complete.obs")
mainText <- paste("ZH Gesamteindruck und Uebung.schwierig, cor:", round(corValue, 4))

plot(gesamteindruck, schwierigkeit, main = mainText)
abline(lm(schwierigkeit ~ gesamteindruck))
