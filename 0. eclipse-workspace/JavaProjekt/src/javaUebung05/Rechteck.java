package javaUebung05;

public class Rechteck {

	//laenge und breite als double
	private double laenge;
	private double breite;
	
	//Konstruktor
	public Rechteck(double laenge, double breite) {
		this.laenge = laenge;
		this.breite = breite;
	}
	
	public Rechteck() {
		this.laenge = 0.0;
		this.breite = 0.0;
	}

	
	void laengeAusgeben() { 
	double laenge = 5.4;
		System.out.println("Länge: " + laenge); 
	}
	
	
    // Setter for laenge
    public void setLaenge(double l) {
        laenge = l;
    }

    // Setter for breite
    public void setBreite(double b) {
        breite = b;
    }

    // Setter for both sides
    public void setSeiten(double l, double b) {
        laenge = l;
        breite = b;
    }

    // Getter for laenge
    public double getLaenge() {
        return laenge;
    }

    // Getter for breite
    public double getBreite() {
        return breite;
    }

    // Getter for the longer side
    public double getLangeSeite() {
        return Math.max(laenge, breite);
    }

    // Getter for the shorter side
    public double getKurzeSeite() {
        return Math.min(laenge, breite);
    }

    // Getter for the diagonal
    public double getDiagonale() {
        return Math.sqrt(laenge * laenge + breite * breite);
    }

    // Getter for the area
    public double getFlaeche() {
        return laenge * breite;
    }

    // Getter for the perimeter
    public double getUmfang() {
        return 2 * (laenge + breite);
    }
}
