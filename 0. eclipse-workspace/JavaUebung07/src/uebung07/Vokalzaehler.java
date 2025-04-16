package uebung07;

import javax.swing.JOptionPane;

public class Vokalzaehler {
	static String vokale = "aeiou"; 
	static int numVok = 0;
	
	public static void main(String[] args){
			String e = JOptionPane.showInputDialog("String eingabe").toLowerCase();
			
			for (char c : e.toCharArray()) {
				if(vokale.indexOf(c) != -1 ) {
					numVok++;
				}
			}
			JOptionPane.showMessageDialog(null, ("Number of vocals: " + numVok), "Vokalzaehler", 1);
			
		}
	
}
