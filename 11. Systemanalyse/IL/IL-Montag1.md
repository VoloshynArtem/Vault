Sie erhalten 10 vage formulierte Anforderungen. Formulieren Sie sie so um, dass sie mit dem SMART-Modell übereinstimmen. Machen Sie sich auch bewusst, welchen Aspekt des SMART-Modells Sie bei der Neuformulierung der Anforderung auf welche Weise berücksichtigen sollten.  
  
Die vagen Anforderungen:  
•    - Die Software sollte benutzerfreundlich sein.  
•    - Das System muss schnell sein.  
•    - Die Webseite sollte ansprechend gestaltet sein.  
•    - Es muss sicher sein.  
•    - Kunden sollten zufrieden sein.  
•    - Das Programm sollte intuitiv zu bedienen sein.  
•    - Unsere Plattform muss für viele Nutzer skalierbar sein.  
•    - Der Support sollte hilfreich sein.  
•    - Updates sollten regelmäßig bereitgestellt werden.  
•    - Die Datenübertragung muss zuverlässig sein.  

---
Die UX-UI-Design der sollte sollte jede Funktion sollte mit 3 Klicks erreicht werden können, oft benutzte Funktionen sollten direkt vom Startmenü ausgeführt werden können und weitere in Unterkategorien unterteilt werden. Ein neuer User (jemand, der das Interface noch nie gesehen hat) sollte sich durch das Interface klicken können und 90+% der Funktionen intuitiv verstehen. Die restlichen Funktionen sollten innerhalb kürzester Zeit (nicht mehr als 10 Minuten) erlernt werden können.

Das Produkt sollte bei jeder Operation nicht länger als 50 ms brauchen, um den gewünschten Inhalt anzuzeigen bei einer angenommenen Internetgeschwindigkeit von 10 mbps. Ist dieses Ziel nicht zu erreichen, soll nach Möglichkeit „lazyloading“ und „Caching“ benutzt werden.

Die Protokolle bezüglich Datenschutz und Datensicherheit sollten den europäischen Normen entsprechen. (z. B. DSGVO)

Die Supportabteilungen sollten das Feedback aus den Support-Tickets sammeln, ggf. in FAQ und an die Leitung weiterleiten, welches analysiert und neue Updates aus diesen geplant werden dabei haben Sicherheitsset-Lücken ständig einen Vorrang, um die Sicherheit zu gewährleisten, bis zum Sättigungspunkt können die Kunden ein Update mit neuen Funktionen und QOL-Improvements einmal im Monat und Sicherheitsupdates spätestens 1 Woche nach der Vulnerabilität Discovery erwarten.
Des Weiteren sollte die Supportabteilung eine Wartezeit von maximal 5 Minuten und in peakzeiten nicht länger als 15 Minuten betragen, es soll keine AI in der Supportabteilung benutzt werden. Ist ein Fix zum Problem des Clients verfügbar, so wird dieser kurz geschildert und falls verfügbar, ein Link zu weiteren Ressourcen übermittelt werden.

Die Webseite sollte CSS-theming unterstützen, für welche alle Features dokumentiert werden sollen (auch die, die durch Updates hinzukommen), standardmäßig sollte die Webseite minimalistische Züge haben, d. h. single color Hintergrund, Text auf nicht mehr als 2 Sätze mit jeweils 10 Wörtern gekürzt. 

Die Anwendung sollte auf Kubernetes Clustern laufen, welche Loadbalancer sind, je nach Auslastung wird die Anzahl zwischen 2 und 50 nodes pro Location skaliert werden. Es sollten 3 Locations pro Kontinent geben, um High availability zu ermöglichen. 

Die Datenübertragung sollte durch TCP (Transmission Control Protocol) realisiert werden, um eine garantierte Übertragung zu ermöglichen, des Weiteren sollte "Error detection" und "error correction" eingesetzt werden: wird ein TCP Paket erhalten, wird von diesem ein Hash konstruiert und als Antwort an den Server gesendet, dieser vergleicht diesen mit eigenem Hash ist dieser gleich, so wird eine Antwort ok geschickt, ist dieser nicht gleich werden die Daten nochmals übermittelt und der check nochmal ausgeführt.

---
  
**==Das SMART-Modell==**  
  
Das SMART-Modell ist ein Akronym, das häufig im Projektmanagement und insbesondere in der Zielsetzung verwendet wird. Es bietet einen Rahmen, um Ziele klar, greifbar und messbar zu machen. Das Akronym steht für:  
  
**==SPECIFIC (SPEZIFISCH)==**  
  
Ziele sollten klar, präzise und spezifisch sein, statt **vage** und **allgemein**. Ein spezifisches Ziel beantwortet die W-Fragen: Wer ist beteiligt? Was soll erreicht werden? Wo wird es geschehen? Warum ist dieses Ziel wichtig?  
  
**==MEASURABLE (MESSBAR)==**  
  
Ziele sollten in einer Art und Weise definiert sein, die messbar ist. Das heißt, es sollte klar sein, wann das Ziel erreicht ist. Beispielsweise kann ein messbares Ziel die Anzahl der zu erledigenden Aufgaben, die zu erreichende Leistung oder andere quantitative Benchmarks enthalten.  
  
Beispiel:  
Innerhalb eines halben Jahres nach Einführung des Systems sollte eine Umsatzsteigerung von 10 % erreicht sein.  
  
**==ACHIEVABLE (ERREICHBAR)==**  
  
Ziele sollten realistisch und erreichbar sein.  
  
Es geht natürlich um die Wirtschaftlichkeit eines Projektes:  
Leistungen, die erwartet werden, müssen auch vom Erbringer erbracht werden können. Es wäre unseriös, Leistungen zu versprechen, die in wirtschaftlicher Weise nicht ausgeführt werden können. Ebenfalls muss das Entwickler-Team auch die Kompetenzen besitzen, die Ziele umzusetzen.  
  
Regress-Forderung durch Nicht-Erbringung der vertraglichen Leistung sind in den meisten Fällen finanziell schmerzhaft.  
  
Auf der anderen Seite sollte das mögliche Leistungs-Spektrum auch ausgereizt werden, wenn der Kunde oder die Kundin auch bereit ist, die Kosten dafür zu tragen.  
  
Für das Team der Entwickler gilt außerdem:  
  
Die Ziele sollten herausfordernd sein, um Motivation zu erzeugen, aber dennoch innerhalb der Fähigkeiten und Ressourcen des Teams oder der Einzelperson liegen.  
  
Das Gefühl der Überforderung kann genauso für Verdruss sorgen, wie das Gefühl der Unterforderung.  
  
**==RELEVANT (RELEVANT)==**  
  
Ziele sollten relevant sein, d.h. sie sollten im Einklang mit den übergeordneten Zielen und der Strategie des Unternehmens oder des Projekts stehen.  
  
**==TIME-BOUND (ZEITLICH FESTGELEGT)==**  
  
Jedes Ziel sollte einen klar definierten Zeitrahmen haben. Das kann ein Enddatum oder eine Zeitspanne sein, in der das Ziel erreicht werden soll.  
  
Ein festgesetzter Zeitrahmen trägt dazu bei, den Kostenrahmen überschaubar und planbar zu halten.  
  
Außerdem ermöglicht er es, den Entwicklungs-Prozess für alle Seiten transparent zu gestalten.  
  
Wenn sich schon sehr früh Verzögerungen ergeben, könnte man diese ausgleichen, indem man spätere Projekt-Phasen kürzt. Oder man könnte/ müsste die Projekt-Ziele noch mal neu verhandeln und ggf. ursprünglich geplante Leistungen streicht. Verzögerungen machen sich meistens ebenfalls durch einen Anstieg der Kosten eines Projektes bemerkbar.  
  
Für das Team der Entwickler gilt außerdem:  
  
Ein zeitlich festgelegtes Ziel schafft Dringlichkeit und kann dazu beitragen, die Motivation aufrechtzuerhalten.