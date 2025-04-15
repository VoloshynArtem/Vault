package uebung006;

public class BruchMitSeriennummer extends BruchErgaenzt{
	private static int seriennummer ;
	
	public BruchMitSeriennummer() {
		super();
		seriennummer = seriennummer + 1;
	}
	
	BruchMitSeriennummer(int x) {
        super(x);
        seriennummer = seriennummer + 1;
    }
	
	BruchMitSeriennummer(int x, int y) {
        super(x,y);
        seriennummer = seriennummer + 1;
    }

	public int getSeriennummer() {
		return seriennummer;
	}

	public void setSeriennummer(int s) {
		seriennummer = s;
	
	}

	
	
}
