package kapitel5;

import java.util.ArrayList;

public class Bib {

	public static void main(String[] args) {
		  
		ArrayList<Regal> regale = new ArrayList<>();
		
		
		
		regale.add(new Regal());
		
		regale.get(0).addBuch(new Buch("Der Prozess", "Franz Kafka", "1925"));
		regale.get(0).addBuch(new Buch("Der Steppenwolf", "Hermann Hesse", "1927"));
		regale.get(0).addBuch(new Buch("Der Meister und Margarita", "Mikhail Bulgakov", "1967"));
		regale.get(0).addBuch(new Buch("Der alte Mann und das Meer", "Ernest Hemingway", "1952"));
		
		
		
		for (Regal r : regale) {
			
			for (Buch b : r.regal) {
				System.out.println(b.getName() + " von " + b.getAuth() + ", " + b.getPubDate());
				
				
			}
		}
		
		
		

	}

}
