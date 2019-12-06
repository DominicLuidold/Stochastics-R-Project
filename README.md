# Stochastics-R-Project
!FUNCTIONS
getmode <- function(v) {
     uniqv <- unique(v)
     uniqv[which.max(tabulate(match(v, uniqv)))]
 }

quartilsabstand <- function(x) {
     quantile(x, 0.75, FALSE, FALSE) - quantile(x, 0.25, FALSE, FALSE)
}

barplot(numdaten, names.arg=monate,xlab="Monat",ylab="xi",col="blue")

_____________________________________________________________________

INFO:

Grundlegende Statistikfunktionen
•sum(x)– die Summe von x
•mean(x)– das arithmetische Mittel von x
•weighted.mean(x,w)– das gewichtete Mittel von x mit den Gewichten w
•median(x)– der Median von x
•var(x)– die Varianz von x
•sd(x)– Die Standardabweichung von x
•cov(x,y)– die Kovarianz von x,y
•cor(x,y)– die Korrelation zwischen x,y
•quantile(x,0.25)– berechnet das 25% Quantile von X


