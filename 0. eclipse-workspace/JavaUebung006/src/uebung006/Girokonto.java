package uebung006;

public class Girokonto extends Konto{
	double limit;
	
	public Girokonto(String Kn, double Ks, double l) {
		super(Kn, Ks);
		setLimit(l);
		
	}

	public double getLimit() {
		return limit;
	}

	public void setLimit(double l) {
		this.limit = l;
	}
	
	public void auszahlen(double amt) throws NotEnoughMoneyException {
		if (getKontostand() + limit >= amt) {
			setKontostand(getKontostand()-amt);
		
		}else {
			throw new NotEnoughMoneyException("babynomony");
			
		}
		
		
		
	}

	
	
}
