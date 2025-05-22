// 1b.1 Write a java program for getting different colors through ArrayList interface 
// and search whether the color "Red" is available or not

import java.util.*;

public class ColorSearch {
    public static void main(String[] args) {
        ArrayList<String> colors = new ArrayList<>(Arrays.asList("Red", "Blue", "Green", "Yellow"));
        System.out.println("Contains Red? " + colors.contains("Red"));
    }
}
