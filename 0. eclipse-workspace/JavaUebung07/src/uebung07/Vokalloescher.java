package uebung07;

import javax.swing.JOptionPane;

public class Vokalloescher {
	static String vokale = "aeiou"; 
	static int numVok = 0;
	
	public static void main(String[] args) {
		String e = JOptionPane.showInputDialog("String eingabe").toLowerCase();
		StringBuilder sb = new StringBuilder(e);
		
		for (int i= e.length()-1; i>=0; i--) {
			if(vokale.indexOf(e.toCharArray()[i]) != -1 ) {
				sb.deleteCharAt(i);
			}
		}
		JOptionPane.showMessageDialog(null, (sb.toString()), "Vokalzaehler", 1);
		
	}
}
