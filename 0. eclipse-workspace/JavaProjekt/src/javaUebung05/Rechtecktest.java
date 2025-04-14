package javaUebung05;

import javax.swing.JOptionPane;

public class Rechtecktest {

	public static void main(String[] args) {
		
		Rechteck r = new Rechteck2(Double.parseDouble(JOptionPane.showInputDialog("Bitte geben Sie die laenge des Rechtecks ein:")),Double.parseDouble(JOptionPane.showInputDialog("Bitte geben Sie die breite des Rechtecks ein:")));
		//ausgabe aller Methoden in die Konsole
		System.out.println("Laenge: " + r.getLaenge());
		System.out.println("Breite: " + r.getBreite());
		System.out.println("Flaeche: " + r.getFlaeche());
		
		r.laengeAusgeben();
				
				
		
		

	}

}
