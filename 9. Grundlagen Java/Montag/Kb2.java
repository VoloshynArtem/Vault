import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Kb2 extends JFrame implements ActionListener {

    private JTextField radiusField;
    private JComboBox<String> einheitBox;
    private JLabel umfangLabel;
    private JLabel flaecheLabel;

    public Kb2() {
        this.setTitle("Vibe coded rechner");
        this.setSize(350, 200);
        this.setLayout(new GridLayout(5, 2));
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Radius Eingabe
        this.add(new JLabel("Radius:"));
        radiusField = new JTextField();
        this.add(radiusField);

        // Einheit Auswahl
        this.add(new JLabel("Einheit:"));
        String[] einheiten = {"mm", "cm", "m"};
        einheitBox = new JComboBox<>(einheiten);
        this.add(einheitBox);

        // Button
        JButton button = new JButton("Berechne");
        button.addActionListener(this);
        this.add(button);

        // Leeres Label zum Auffüllen
        this.add(new JLabel());

        // Ergebnislabels
        this.add(new JLabel("Umfang:"));
        umfangLabel = new JLabel("-");
        this.add(umfangLabel);

        this.add(new JLabel("Fläche:"));
        flaecheLabel = new JLabel("-");
        this.add(flaecheLabel);

        this.setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        try {
            double radius = Double.parseDouble(radiusField.getText());
            String einheit = (String) einheitBox.getSelectedItem();

            double umfang = 2.0 * Math.PI * radius;
            double flaeche = Math.PI * radius * radius;

            // Ausgabe mit Einheiten
            umfangLabel.setText(String.format("%.2f %s", umfang, einheit));
            flaecheLabel.setText(String.format("%.2f %s²", flaeche, einheit));
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(this, "Bitte gib eine gültige Zahl ein!", "Fehler", JOptionPane.ERROR_MESSAGE);
        }
    }

    public static void main(String[] args) {
        new Kb2();
    }
}
