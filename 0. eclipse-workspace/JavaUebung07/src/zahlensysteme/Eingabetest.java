package zahlensysteme;

import java.time.Duration;
import java.time.LocalTime;

import javax.swing.JOptionPane;

public class Eingabetest {//alles hier vibecoded

	public static void main(String[] args) {
		String testString = "Fischers Fritz fischt fri- sche Fische";
		LocalTime startTime = LocalTime.now();
		//System.out.println(startTime);
		String eingabe = JOptionPane.showInputDialog(testString + " \n eingeben");
		
		if (eingabe.equals(testString)) {
			
			Duration duration = Duration.between(startTime, LocalTime.now());
			System.out.println(
		            "Minuten: " + (duration.toMillis() / (60 * 1000)) +
		            ", \nSekunden: " + ((duration.toMillis() % (60 * 1000)) / 1000) +
		            ", \nMillisekunden: " + (duration.toMillis() % 1000)
		        );
			
		}
		
		

	}

}
