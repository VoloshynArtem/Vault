package javaUebung05;

import javax.swing.JOptionPane;

public class FlaechengleicherKreis {
	static Rechteck r ;
	static Kreis k ;
	public static void main (String [] args ) {
		
		r = new Rechteck2(eingabe("l"), eingabe("b"));
		k = new Kreis((Math.sqrt(r.getFlaeche() / Math.PI)));
		System.out.println("r: " + k.getRadius());
		System.out.println("f: " + k.getFlaeche());
	}
	
	public static double eingabe(String msg) {
		
		return Double.parseDouble(JOptionPane.showInputDialog(msg));
		
	}
	
}
