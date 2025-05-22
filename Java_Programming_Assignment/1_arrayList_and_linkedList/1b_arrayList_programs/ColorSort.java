// 1b.3 Write a java program for getting different colors through ArrayList interface 
// and sort them using Collections.sort(ArrayListObj)

import java.util.*;

public class ColorSort {
    public static void main(String[] args) {
        ArrayList<String> colors = new ArrayList<>(Arrays.asList("Blue", "Red", "Yellow", "Green"));
        Collections.sort(colors);
        System.out.println("Sorted colors: " + colors);
    }
}
