package uebung006;

public class Girokontotest {
    public static void main(String[] args) {
        Girokonto gk = new Girokonto("0000000001", 10000.0, 1000.0);
        
        try {
			gk.auszahlen(11000.0);
		} catch (NotEnoughMoneyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        System.out.println("Kontostand: " + gk.getKontostand() + "€");
        
        gk.einzahlen(11000.0);
        try {
			gk.auszahlen(11001.0);
		} catch (NotEnoughMoneyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        System.out.println("Kontostand: " + gk.getKontostand() + "€");
    }
}
