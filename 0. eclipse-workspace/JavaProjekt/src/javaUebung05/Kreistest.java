package javaUebung05;

import javax.swing.JOptionPane;

public class Kreistest {


	public static void main(String[] args) {
		/*Kreis k1 = new Kreis();
		Kreis k2 = new Kreis(5.0d);
		
		
		Kreis k3 = new Kreis(Double.parseDouble(JOptionPane.showInputDialog("Radius eingeben")));
		
		
		System.out.println(k3.getFlaeche() + " " + k3.getUmfang() + " " + k3.getRadius());
	*/
	
		
		
		Double s = Double.parseDouble (JOptionPane.showInputDialog("start Radius"));
		Double e = Double.parseDouble (JOptionPane.showInputDialog("+?"));
		
		Kreistabelle(0, s, e);
		
	}
	
	
	public static void Kreistabelle(int i, Double s, Double e) {
		System.out.println("_______________________________________");
		
		if (i >= 30) {
			return;
			
		}
		
		Kreis1 k = new Kreis1(s);
		
		System.out.print(" | " + k.getRadius() + "			| ");
		
		
		System.out.print(k.getUmfang() + "			| ");
		
		System.out.print(k.getFlaeche() + "			| " + "\n");
		
		Kreistabelle(++i, s+e, e);
		
		
		
	}
	
	
}