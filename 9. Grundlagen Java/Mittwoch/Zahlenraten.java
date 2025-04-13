import javax.swing.JOptionPane;

class Zahlenraten {
    public static void main(String[] args) {
        try {
            int input = Integer.parseInt(JOptionPane.showInputDialog("Bitte Zahl zwischen 0 und 10 eingeben:"));

            switch (input) {
                case 4, 5, 7, 8 -> JOptionPane.showMessageDialog(null, "Knapp daneben!");
                case 6 -> JOptionPane.showMessageDialog(null, "Treffer!");
                default -> JOptionPane.showMessageDialog(null, "Daneben.");
            }

        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Ungültige Eingabe! Bitte eine Zahl eingeben.");
        }
    }
}
