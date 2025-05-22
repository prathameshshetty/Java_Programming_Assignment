// 5b. Develop a Swing program in Java to create a Tabbed Pan of RED, BLUE and GREEN and display the concerned color when the tab is selected.

import javax.swing.*;
import java.awt.*;

public class TabbedColorPaneRGB {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Color Tabs");
        JTabbedPane tabbedPane = new JTabbedPane();

        JPanel redPanel = new JPanel();
        redPanel.setBackground(Color.RED);

        JPanel bluePanel = new JPanel();
        bluePanel.setBackground(Color.BLUE);

        JPanel greenPanel = new JPanel();
        greenPanel.setBackground(Color.GREEN);

        tabbedPane.add("RED", redPanel);
        tabbedPane.add("BLUE", bluePanel);
        tabbedPane.add("GREEN", greenPanel);

        frame.add(tabbedPane);
        frame.setSize(300, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
    }
}
