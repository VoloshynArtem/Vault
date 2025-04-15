package uebung006;

public class Kontotest {

	public static void main(String[] args) {
		Konto k = new Konto("0000000001", 1000);
		
		
		ausgeben("Kontonummer " + k.getKontonummer());
		ausgeben("Kontostand " + k.getKontostand() + "€");
		
		k.einzahlen(500);
		try {
			k.auszahlen(750);
			ausgeben("auszahlung erfolgreich 😀 \n" + "neuer Konstostand: " + k.getKontostand() + "€");
			
		}catch(NotEnoughMoneyException e) {
			
			ausgeben(e);
			ausgeben("der Gewünschte betrag konnte nicht ausgegeben");
		}
		
		ausgeben("Kontonummer " + k.getKontonummer());
		ausgeben("Kontostand " + k.getKontostand() + "€");
		
		
	}

	public static void ausgeben(Object o) {
		
		System.out.println(o);
		
		
	}
	
}
