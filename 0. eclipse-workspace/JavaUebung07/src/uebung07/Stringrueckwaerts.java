package uebung07;

import javax.swing.JOptionPane;

public class Stringrueckwaerts {
	
	public static void main(String[] args) {
		String e = JOptionPane.showInputDialog("String eingabe");
		
		
		e = new StringBuilder(e).reverse().toString(); // oder array to array dann reversen
		
		
		System.out.println(e); //<-- kb das jetzt extra zu machen
		JOptionPane.showMessageDialog(null, ("reversed string \n" + e), "Vokalzaehler", 1);
		
	}

}
