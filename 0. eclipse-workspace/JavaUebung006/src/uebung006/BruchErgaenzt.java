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
	
	public BruchErgaenzt Addieren(BruchErgaenzt b) {
		
		
		return new BruchErgaenzt(
		        this.getZaehler() * b.getNenner() + b.getZaehler() * this.getNenner(),
		        this.getNenner() * b.getNenner()
		    );
		
		
	}
	
	public Bruch bruchSubtrahieren(Bruch b) {
		
		return new Bruch(
				b.getNenner()*this.getZaehler()-b.getZaehler()+this.getZaehler(),
				(this.getNenner() * b.getNenner()));
		
		
	}
	
	public double dezimalwert() {
		
		return (double) this.getZaehler() / this.getNenner(); //<--- this one got me ngl 
		
	}
	
	
}
