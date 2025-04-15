package uebung006;

class Bruch {
    private int zaehler;
    private int nenner;

    Bruch() {
        zaehler = 0;
        nenner = 1;
    }

    Bruch(int x) {
        zaehler = x;
        nenner = 1;
    }

    Bruch(int x, int y) {
        zaehler = x;
        nenner = y;
    }

    int getZaehler() {
        return zaehler;
    }

    int getNenner() {
        return nenner;
    }

    void setZaehler(int z) {
        zaehler = z;
    }

    void setNenner(int n) {
        nenner = n;
    }

    void ausgeben() {
        System.out.print(zaehler + "/" + nenner);
    }

    String Bruchstring() {
        return zaehler + "/" + nenner;
    }

    void kuerzen() {
        int m = zaehler;
        int n = nenner;
        int r = m % n;

        while (r > 0) {
            m = n;
            n = r;
            r = m % n;
        }

        zaehler /= n;
        nenner /= n;
    }

    void gekuerztausgeben() {
        kuerzen();
        ausgeben();
    }

    boolean equals(Bruch x) {
        Bruch a = new Bruch(this.zaehler, this.nenner);
        Bruch b = new Bruch(x.zaehler, x.nenner);

        a.kuerzen();
        b.kuerzen();

        return (a.zaehler == b.zaehler) && (a.nenner == b.nenner);
    }
}
