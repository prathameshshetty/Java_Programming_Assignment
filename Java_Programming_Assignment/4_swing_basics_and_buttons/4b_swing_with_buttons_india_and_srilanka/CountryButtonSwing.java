// 4b. Develop a Swing program in Java to display a message “Srilanka is pressed” or “India is pressed” depending upon the Jbutton either Srilanka or India is pressed by implementing the event handling mechanism with addActionListener()

import javax.swing.*;
import java.awt.*;

public class CountryButtonSwing {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Country Buttons");
        JButton btnIndia = new JButton("India");
        JButton btnSrilanka = new JButton("Srilanka");
        JLabel label = new JLabel("", SwingConstants.CENTER);

        label.setFont(new Font("Arial", Font.PLAIN, 24));

        btnIndia.addActionListener(e -> label.setText("India is pressed"));
        btnSrilanka.addActionListener(e -> label.setText("Srilanka is pressed"));

        JPanel panel = new JPanel();
        panel.add(btnIndia);
        panel.add(btnSrilanka);

        frame.setLayout(new BorderLayout());
        frame.add(panel, BorderLayout.NORTH);
        frame.add(label, BorderLayout.CENTER);
        frame.setSize(400, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
}
