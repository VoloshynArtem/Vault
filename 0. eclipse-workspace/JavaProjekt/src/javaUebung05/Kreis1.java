package javaUebung05;

public class Kreis1 extends Kreis{

	public Kreis1() {
		super();
		
	}
	public Kreis1(Double s) {
		super(s);
		
	}
		
	
	public void setUmfang(float u) {
		setRadius((float) (u / (2 * Math.PI)));
		
		
	} 
	
	
	
	public void setFlaeche(double f) {
		setRadius((float) Math.sqrt(f/ Math.PI));
		
		
		
		
	}
	
	
	
}
