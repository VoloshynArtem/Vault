// import java.util.Scanner;//old version
import javax.swing.JOptionPane;

public class Schaltjahr {
	static int jahr;
	// static Scanner s = new Scanner(System.in);//old version
    static String [] s32425673 = {"ein Schaltjahr","kein Schaltjahr" };
	
	public static void main(String[] args) {
		System.out.println("Schaltjahrtester v2");
        jahr = getNumberFromUser("Jahr zur überprüfung als Zahl bitte");
		
		if ((jahr % 4 == 0 && jahr % 100 != 0) || jahr % 400 == 0) {
			// System.out.println("Das Jahr " + jahr + " ist ein Schaltjahr"); //old version
            output(jahr, 0);
			
		}else {
			// System.out.println("Das Jahr " + jahr + " ist kein Schaltjahr"); //old version
            output(jahr, 0);
		}
	}

    public static void output(int jahr, int index){
        JOptionPane.showMessageDialog(null, "das Jahr " + jahr + " ist " + s32425673[index], "Schaltjahrtester v2",1);


    }

	public static int getNumberFromUser(String text) {
		try {
			//System.out.println("Bitte Jahr zu testen eingeben");//old version
            //return Integer.parseInt(s.nextLine());//old version
            return Integer.parseInt(JOptionPane.showInputDialog(text));//<- input dialog kann nativ keine Fenstername ändern
			
		} catch (NumberFormatException e) {
			// System.out.println("Bitte ganze zahlen eingeben");//oldversion
            if (e.getMessage().contains("null")){
                System.exit(0);
                return 0 ; //<- java things
            }else {
			    return getNumberFromUser("╚(•⌂•)╝ Geht das auch als Zahl, da hat wohl einer nicht gelesen ╚(•⌂•)╝");
            }
		}	
	}

     

}
