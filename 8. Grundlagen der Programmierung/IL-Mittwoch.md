
# 2.8

![[struktogramm-3_19_2025.pdf]]

|      |                  | R1  | R2  | R3  |
| ---- | ---------------- | --- | --- | --- |
| Wenn | Kosten <= 150€   | j   | n   | n   |
|      | Kosten >= 150€   | n   | j   | j   |
|      | Kosten >= 300€   | n   | n   | j   |
| Dann | + Versand        | x   | -   | -   |
|      | + Gratisgeschenk | -   | -   | x   |
# 5.8

Unter einer **==Variablen==** (ganz bewusst so formuliert) verstehe ich dass eine Datenstruktur nicht konstant ist, kann also ohne weiteres verändert werden

Variablen können Lokal, Global, extern sowie Statisch sein. 


```
ANFANG
    Eingabe array [1-n]
    Ausgabe max(array)
ENDE
```

```
ANFANG
    Eingabe array [543, 246]
    Ausgabe max(array)
ENDE
```

![[struktogramm-3_19_2025 (1).pdf]]

# Ü2 

je nach zeit durch einen switch block “gm”, “gt”, “ga” ausgeben welche durch das Geschlecht und den Namen konkateniert sind.

# U3
```
int number = readInt ("Zahl: );
print ((int) number / 5)
```

das funktioniert, weil bei dem casten zum int in der regel die Dezimalstellen wegfallen.

“Warum ist die Verwendung einer fußgesteuerten Schleife in Aufgabe 1 ungünstig?” weil es einfach unnötig ist ig und mehr CPU takte in Anspruch nimmt. 


```
int waren7 = 0;
int waren9 = 0;

if (warengruppe == 7){
	waren7 + = anzahl

}elif (warengruppe == 9){
	waren9 + = anzahl

}

```
