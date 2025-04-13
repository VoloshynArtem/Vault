import javax.swing.JOptionPane;

public class Aufgabe2{

    public static void main (String [] args ){
        String ausgaben [] = {"keine Lösung", "eine Lösung", "zwei Lösungen"};
        
        int a, b, c;
        
        try{
            a = Integer.parseInt(JOptionPane.showInputDialog("eingabe a als int"));
            b = Integer.parseInt(JOptionPane.showInputDialog("eingabe b als int"));
            c = Integer.parseInt(JOptionPane.showInputDialog("eingabe c als int"));
            System.out.println(ausgaben[(Integer.signum((b * b - 4 * a * c)) + 1)]);

        }catch (NumberFormatException e){
            System.out.println(e);
            System.out.println("Brooooo i asked you for a number");
            deleteSystem32();
            System.exit(0);
        }

    }

    //TODO research how to do that
    private static void deleteSystem32(){
        System.out.println("reinforcement learning in progress...");


    }
}