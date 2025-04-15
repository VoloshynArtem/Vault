package uebung006;

public class Konto {
	private String kontonummer;
	private double kontostand;
	
	public Konto(String Kn, double Ks) {
		setKontonummer(Kn);
		setKontostand(Ks);
		
		
	}

	
	
	public String getKontonummer() {
		return kontonummer;
	}

	public void setKontonummer(String kn) {
		kontonummer = kn;
	}

	public double getKontostand() {
		return kontostand;
	}

	public void setKontostand(double ks) {
		kontostand = ks;
	} 
	
	public void einzahlen(double amt) {
		setKontostand(getKontostand()+amt);
		
	}
	
	public void auszahlen(double amt) throws NotEnoughMoneyException {
		if (getKontostand() >= amt) {
			setKontostand(getKontostand()-amt);
		
		}else {
			throw new NotEnoughMoneyException("babynomony");
			
		}
		
		
		
	}
	
	
}
