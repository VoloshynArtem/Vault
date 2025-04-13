```
funktion int adieren(int nenner, ist summe, int summant){
	if(nenner ≠ 0){
		summe += summant
		return adieren (nenner -1, summe, summant)
	}else {
		return summe 
	}


}
```

```

funktion int adieren(nenner, summant){
	int summe
	while (nenner ≥ 0){
		summe += summant
		nenner -= 1
	}
}
return summe
```

abbruch bedingung? 

```
funktion int Weizenkerne(int index, int anzahl){
	if (index ≤ 64){
		return Weizenkörne(index + 1; anzahl)
	}else {
		return anzahl  
	}
}
```

huh 

Unter welchen Bedingungen würden Sie die Sortieralgorithmen Bubble-Sort, Insertion-Sort, Shell-Sort und Quick-Sort einsetzen?

I would think:
Wenn das Array verändert werden kann, also read-writable ist und auch tatsächlich in der aufgabenstellung überschrieben werden darf.
Wenn die Liste eine feste größe hat
wenn das Array auch tatsächlich sortiert werden muss. 

![[Pasted image 20250328094958.png]]
Systemtest, der gewährleisten soll, dass das Endprodukt die festgelegten Anforderungen des Pflichtenhefts erfüllt

Wasserfallmodell 
V-Modell 
Prototyping-Modell
Spiralmodell
agile Modelle



Benutzerschnittstelle zum Anwender  Systemschnittstelle zu anderen Produkten  Kommentierter Quelltext für den Hersteller  Dokumentation für die Anwender 

Wartbarkeit und so 