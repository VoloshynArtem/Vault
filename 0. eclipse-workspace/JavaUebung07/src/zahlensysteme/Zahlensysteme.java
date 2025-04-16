package zahlensysteme;

import javax.swing.JOptionPane;

public class Zahlensysteme {

	public static void main(String[] args) {
		int e = eingabeInt("Bitte eine ganze Zahl eingeben");
		
		System.out.println(
				"Dezimal: " +  e + " \n" + 
				"Dual: " + Integer.toBinaryString(e) + " \n" +
				"Hex: " + Integer.toHexString(e).toUpperCase() + " \n" +
				"Oktal: " + Integer.toOctalString(e) 
				);

	}

	public static int eingabeInt(String t) {
		try {
			return Integer.parseInt(JOptionPane.showInputDialog(t));
			
		}catch(NumberFormatException e) {
			return eingabeInt("Geht das auch als ganze Zahl");
			
		}
		
		
		
	}
	
}
