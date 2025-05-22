// 4c. Develop a Swing program in Java to display a message “Digital Clock is pressed” or “Hour Glass is pressed” depending upon the JButton with image either Digital Clock or Hour Glass is pressed by implementing the event handling mechanism with addActionListener()

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class ImageButtonSwing {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Image Buttons");
        JLabel label = new JLabel("", SwingConstants.CENTER);
        label.setFont(new Font("Arial", Font.PLAIN, 24));

        // Replace with actual image paths or URLs
        ImageIcon clockIcon = new ImageIcon("digital_clock.png");
        ImageIcon hourglassIcon = new ImageIcon("hourglass.png");

        JButton btnClock = new JButton(clockIcon);
        JButton btnHourGlass = new JButton(hourglassIcon);

        btnClock.addActionListener(e -> label.setText("Digital Clock is pressed"));
        btnHourGlass.addActionListener(e -> label.setText("Hour Glass is pressed"));

        JPanel panel = new JPanel();
        panel.add(btnClock);
        panel.add(btnHourGlass);

        frame.setLayout(new BorderLayout());
        frame.add(panel, BorderLayout.NORTH);
        frame.add(label, BorderLayout.CENTER);
        frame.setSize(500, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
}
