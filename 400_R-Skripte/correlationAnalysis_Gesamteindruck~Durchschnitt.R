#Zusammenhang des Gesamteindrucks zum Durchschnitt der anderen Spalten (pro Zeile)


gesamteindruck <- data[, "Gesamteindruck"]
gesamteindruck
zeilen <- c(1:37)
spalten <- c(2:12)


durchschnittZeile1 <- mean(data[1,spalten])
durchschnittZeile2 <- mean(data[2,spalten])
durchschnittZeile3 <- mean(data[3,spalten])
durchschnittZeile4 <- mean(data[4,spalten])
durchschnittZeile5 <- mean(data[5,spalten])
durchschnittZeile6 <- mean(data[6,spalten])
durchschnittZeile7 <- mean(data[7,spalten])
durchschnittZeile8 <- mean(data[8,spalten])
durchschnittZeile9 <- mean(data[9,spalten])
durchschnittZeile10 <- mean(data[10,spalten])
durchschnittZeile11 <- mean(data[11,spalten])
durchschnittZeile12 <- mean(data[12,spalten])
durchschnittZeile13 <- mean(data[13,spalten])
durchschnittZeile14 <- mean(data[14,spalten])
durchschnittZeile15 <- mean(data[15,spalten])
durchschnittZeile16 <- mean(data[16,spalten])
durchschnittZeile17 <- mean(data[17,spalten])
durchschnittZeile18 <- mean(data[18,spalten])
durchschnittZeile19 <- mean(data[19,spalten])
durchschnittZeile20 <- mean(data[20,spalten])
durchschnittZeile21 <- mean(data[21,spalten])
durchschnittZeile22 <- mean(data[22,spalten])
durchschnittZeile23 <- mean(data[23,spalten])
durchschnittZeile24 <- mean(data[24,spalten])
durchschnittZeile25 <- mean(data[25,spalten])
durchschnittZeile26 <- mean(data[26,spalten])
durchschnittZeile27 <- mean(data[27,spalten])
durchschnittZeile28 <- mean(data[28,spalten])
durchschnittZeile29 <- mean(data[29,spalten])
durchschnittZeile30 <- mean(data[30,spalten])
durchschnittZeile31 <- mean(data[31,spalten])
durchschnittZeile32 <- mean(data[32,spalten])
durchschnittZeile33 <- mean(data[33,spalten])
durchschnittZeile34 <- mean(data[34,spalten])
durchschnittZeile35 <- mean(data[35,spalten])
durchschnittZeile36 <- mean(data[36,spalten])
durchschnittZeile37 <- mean(data[37,spalten])

durchschnitte <- c(durchschnittZeile1,durchschnittZeile2,durchschnittZeile3,durchschnittZeile4,durchschnittZeile5,durchschnittZeile6,durchschnittZeile7,durchschnittZeile8,durchschnittZeile9,durchschnittZeile10,durchschnittZeile11,durchschnittZeile12,durchschnittZeile13,durchschnittZeile14,durchschnittZeile15,durchschnittZeile16,durchschnittZeile17,durchschnittZeile18,durchschnittZeile19,durchschnittZeile20,durchschnittZeile21,durchschnittZeile22,durchschnittZeile23,durchschnittZeile24,durchschnittZeile25,durchschnittZeile26,durchschnittZeile27,durchschnittZeile28,durchschnittZeile29,durchschnittZeile30,durchschnittZeile31,durchschnittZeile32,durchschnittZeile33,durchschnittZeile34,durchschnittZeile35,durchschnittZeile36,durchschnittZeile37)


plot(durchschnitte,gesamteindruck, main = "Durchschnitte in Relation zum Gesamteindruck")

lm(gesamteindruck~durchschnitte)
abline(lm(gesamteindruck~durchschnitte))

#Berechnung des Korrelationsfaktors r

#Wenn Werte > 0.05 nach Shapiro-Test, kann diese "Pearson-Methode" verwendet werden, weil normalverteilt
shapiro.test(durchschnitte)
shapiro.test(gesamteindruck)

cor.test(durchschnitte, gesamteindruck, method="pearson")

# r = 0.4503...

# Fazit: Der Gesamteindruck wurde nur mit 1 oder 2 (bzw. NA) bewertet, die Durchscnitte pro Zeile variieren
# von 1 bis 2.





