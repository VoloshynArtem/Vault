1. 
Highlightet = Primary Key
Da die Spalte Futterarten wahrscheinlich den Datentyp varchar oder text hat befindet sich diese Tabelle in der ersten Normalform, soll der Text aber auch aufgeteilt werden dann könnte die Tabelle wie folgt aussehen:


| ==Tier-ID== | Tierart | Lebensraum | ==Futterart== |
| ----------- | ------- | ---------- | ------------- |
| 1           | Löwe    | Savanne    | Fleisch       |
| 1           | Löwe    | Savanne    | Knochen       |
| 2           | Papagei | Tropenwald | Früchte       |
| 2           | Papagei | Tropenwald | Samen         |
| 2           | Papagei | Tropenwald | Nüsse         |
| 3           | Hai     | Ozean      | Fische        |
| 3           | Hai     | Ozean      | Krebse        |
| 3           | Hai     | Ozean      | Tintenfische  |


2. 


| ==Veranstaltungs ID== | VerantstaltungsName  | VeranstaltungsDatum | ==Teilnehmer ID== | Teilnehmer Namen |
| --------------------- | -------------------- | ------------------- | ----------------- | ---------------- |
| 101                   | Musikfestival        | 2025-06-15          | 501               | Anna             |
| 101                   | Musikfestival        | 2025-06-15          | 502               | Ben              |
| 101                   | Musikfestival        | 2025-06-15          | 503               | Clara            |
| 102                   | Technologiekonferenz | 2025-07-10          | 504               | Daniel           |
| 102                   | Technologiekonferenz | 2025-07-10          | 505               | Emma             |
3.   

| ==VID== | VName                | VDatum     |
| ------- | -------------------- | ---------- |
| 101     | Musikfestival        | 2025-06-15 |
| 102     | Technologiekonferenz | 2025-07-10 |

| ==TID== | TName  |
| ------- | ------ |
| 501     | Anna   |
| 502     | Ben    |
| 503     | Clara  |
| 504     | Daniel |
| 505     | Emma   |

| ==VID== | ==TID== |
| ------- | ------- |
| 101     | 501     |
| 101     | 502     |
| 101     | 503     |
| 102     | 504     |
| 102     | 505     |


4. ist schon in der 3 NF 


5. 
**FahrerNr → Name, Vorname**  
**Fahrgestellnummer → Autohersteller, Automodell, 
Automodell → Hoechstgeschwindigkeit**    
**KFZ-Kennzeichen → FahrerNr

	
