package uebung006;

public class BruchErgaenzt extends Bruch {

	public BruchErgaenzt() {
		super();
        
    }
	BruchErgaenzt(int x) {
        super(x);
		
    }
	
	BruchErgaenzt(int x, int y) {
        super(x,y);
		
    }
	
	public Bruch Addieren(Bruch b) {
		
		
		return new Bruch(
				b.getNenner()*this.getZaehler()+b.getZaehler()+this.getZaehler(),
				(this.getNenner() * b.getNenner()));
		
		
	}
	
	public Bruch bruchSubtrahieren(Bruch b) {
		
		return new Bruch(
				b.getNenner()*this.getZaehler()-b.getZaehler()+this.getZaehler(),
				(this.getNenner() * b.getNenner()));
		
		
	}
	
	public double dezimalwert() {
		
		return this.getZaehler() / this.getNenner();
		
	}
	
	
}
