// 1b.5 Write a java program for getting different colors through ArrayList interface 
// and delete nth element from the ArrayList object by using remove by index

import java.util.*;

public class ColorDeleteNth {
    public static void main(String[] args) {
        ArrayList<String> colors = new ArrayList<>(Arrays.asList("Red", "Blue", "Green", "Yellow"));
        int n = 2;
        if (n >= 0 && n < colors.size()) {
            colors.remove(n);
        }
        System.out.println("Colors after deleting nth element: " + colors);
    }
}
