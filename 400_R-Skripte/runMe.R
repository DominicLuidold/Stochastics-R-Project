# Dieses R-File liest automatisch die Ausgangsdaten (bitte Hinweis unten beachten) sowie 
# selstgeschriebene Funktionen ein und führt alle Auswertungen aus.

# Hinweis:
# Bitte Speicherorte der entsprechenden R-Datien sowie der csv-Datei manuell eingeben 
# bzw. Working-Directory anpassen, sodass die Auswertungen ausgeführt werden können.

# Einlesen der Ausgangsdaten
data <- data.matrix(read.csv(file = "./300_Daten/Evaluation.csv", sep = ";", dec = ",", header = TRUE))

# Einlesen selbstgeschriebener Funktionen
source("./400_R-Skripte/mode.R")

# Ausführen der Auswertung - Boxplots
source("./400_R-Skripte/boxplotAnalysis.R")

# Ausführen der Auswertung - Histogramme
source("./400_R-Skripte/histogramAnalysis.R")

# Ausführen der Auswertung - Linearer Zusammenhang
source("./400_R-Skripte/correlationAnalysis.R")

# Ausführen der Auswertung - Linearer Zusammenhang (Gesamteindruck ~ Durchschnitt/befragter Person)
source("./400_R-Skripte/correlationAnalysis_Gesamteindruck~Durchschnitt.R")

# Ausführen der Auswertung - Analyse von Komma-Schulnoten sowie "NA" - Werten
source("./400_R-Skripte/invalidDataAnalysis.R")
