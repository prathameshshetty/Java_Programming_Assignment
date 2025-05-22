/* 5a. Develop a Swing program in Java to add the countries USA, India, Vietnam, Canada,
Denmark, France, Great Britain, Japan, Africa, Greenland, Singapore into a JList and
display them on console whenever the countries are selected on the list*/

import javax.swing.*;

public class CountryListDisplay {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Country Selector");
        String[] countries = { "USA", "India", "Vietnam", "Canada", "Denmark", "France", "Great Britain", "Japan",
                "Africa", "Greenland", "Singapore" };
        JList<String> countryList = new JList<>(countries);
        countryList.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);

        countryList.addListSelectionListener(e -> {
            if (!e.getValueIsAdjusting()) {
                for (String selected : countryList.getSelectedValuesList()) {
                    System.out.println("Selected: " + selected);
                }
            }
        });

        frame.add(new JScrollPane(countryList));
        frame.setSize(300, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
    }
}
