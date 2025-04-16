package zahlensysteme;

import javax.swing.JOptionPane;

public class Hexumrechner {

	public static void main(String[] args) {
		String eingabe = eingabeHex("Hex eingabe");
		System.out.println(
				"Hex: " + eingabe + "\n" +
				"Decimal: " + Integer.parseInt(eingabe, 16) + "\n" + 
				"Dual: " + Integer.toBinaryString(Integer.parseInt(eingabe, 16))
				
				
				
				
				);
		

	}

	
	public static String eingabeHex(String t) {
		String temp = JOptionPane.showInputDialog(t);
		if (temp.matches("^[0-9a-fA-F]+$")) {
			return temp; 
			
			
		}else {
			return eingabeHex("BITTE HEX");
			
			
		}
		
			
		
		
	}
}
