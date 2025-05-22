// 1b.4 Write a java program for getting different colors through ArrayList interface 
// and extract the elements 1st and 2nd from the ArrayList object by using SubList()

import java.util.*;

public class ColorSublist {
    public static void main(String[] args) {
        ArrayList<String> colors = new ArrayList<>(Arrays.asList("Red", "Blue", "Green", "Yellow"));
        List<String> subColors = colors.subList(0, 2);
        System.out.println("Sublist (1st & 2nd): " + subColors);
    }
}
