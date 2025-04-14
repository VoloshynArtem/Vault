package javaUebung05;

public class Rechteck2 extends Rechteck {
	
	public Rechteck2() {
		super();
		
		
	}
	
	public Rechteck2(double l, double b) {
		super(l,b);
		
		
	}
	
	
	public void laengeVergroessern(double l) {
		setLaenge(getLaenge() + l);
		
	} 
	
	public void breiteVergroessern(double b) {
		setBreite(getBreite()+b);
	}
	
	public void laengeVerkleinern(double l) {
		setLaenge(getLaenge() - l);
	} 
	
	public void breiteVerkleinern(double b) {
		setBreite(getBreite()-b);
	}
	
	

}
