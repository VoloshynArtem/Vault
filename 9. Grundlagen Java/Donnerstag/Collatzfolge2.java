import javax.swing.JOptionPane;

public class Collatzfolge2 {
    public static void main(String[] args) {
        colatz(eignabe("gib Zahl"), 0,0);
    }


    public static int eignabe(String text){
        try {
            return Integer.parseInt(JOptionPane.showInputDialog(text));
        }catch (NumberFormatException e){
            return eignabe("Bitten ZAHL");


        }


    }
    public static void colatz(int k, int len, int max){
        System.out.println(len + ": " + k);
        
        
        
        if (k == 1){
            System.out.println("max Wert: "+ max);
            return;

        }
        if (k%2 == 0 ){ 
            colatz(k/2, ++len, Math.max((k/2), max));
    
    
        }else {
            colatz(3 * k + 1, ++len, Math.max(max, (3 * k + 1)));


        }


    }
}