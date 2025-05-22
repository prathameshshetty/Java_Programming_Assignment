// 1b.2 Write a java program for getting different colors through ArrayList interface 
// and remove the 2nd element and color "Blue" from the ArrayList

import java.util.*;

public class ColorRemove {
    public static void main(String[] args) {
        ArrayList<String> colors = new ArrayList<>(Arrays.asList("Red", "Blue", "Green", "Yellow"));
        colors.remove(1); // Remove 2nd element (index 1)
        colors.remove("Blue"); // Remove "Blue" if still present
        System.out.println("Colors after removal: " + colors);
    }
}
