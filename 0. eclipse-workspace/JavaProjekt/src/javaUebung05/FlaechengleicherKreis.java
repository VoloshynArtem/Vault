package javaUebung05;

import javax.swing.JOptionPane;

public class FlaechengleicherKreis {
	static Rechteck r ;
	static Kreis1 k ;
	public static void main (String [] args ) {
		
		k = new Kreis1();
		r = new Rechteck2(eingabe("l"), eingabe("b"));
		k.setFlaeche(r.getFlaeche());
		System.out.println("r: " + k.getRadius());
		System.out.println("f: " + k.getFlaeche());
	}
	
	public static double eingabe(String msg) {
		
		return Double.parseDouble(JOptionPane.showInputDialog(msg));
		
	}
	
}
