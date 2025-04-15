package uebung006;

public class Anteil extends BruchErgaenzt {
	private static BruchErgaenzt verteilt = new BruchErgaenzt(0);
	
	
	public Anteil() {
		super(0,1);
		// TODO Auto-generated constructor stub
	}

	public Anteil(int z, int n) {
		super(z, n);
		
		verteilt = verteilt.Addieren(new BruchErgaenzt(z,n));
		
	}

	public double getVerteilt() {
		return verteilt.dezimalwert();
	}

	public BruchErgaenzt getRest() {//ahh kein plan was die aufgabe von mior will
	    BruchErgaenzt b = new BruchErgaenzt(1, 1);  
	   

	    
	    b.setZaehler(b.getZaehler() + verteilt.getZaehler());
	    b.setNenner(b.getNenner() * verteilt.getNenner());

	    return b;
	}

	public BruchErgaenzt getVerteilO() { //<--- encapsulation und so krass dass die aufgaben sich davon abweichen
		
		return verteilt;
		
	}
	
	
	
	
	

	
	
}
