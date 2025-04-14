package javaUebung05;

public class Kreis {
	private Double radius; 
	
	public Kreis() {
		radius = 0.0d;
	}
	
	 Kreis(Double s) {
		radius = s;
	}
	 
	 
	 
	 public double getRadius() {
		 return radius;
	 }
	 
	 public void setRadius(double d) {
		 radius =  d;
	 }
	 double getUmfang() {
		 
		 return Math.round((2 * Math.PI * radius) * 100) / 100.0;
		 
		 
		 
	 } 
	 double getFlaeche() {
		 return Math.round((Math.PI * radius * radius) * 100) / 100.0;
		 
	 }
}
