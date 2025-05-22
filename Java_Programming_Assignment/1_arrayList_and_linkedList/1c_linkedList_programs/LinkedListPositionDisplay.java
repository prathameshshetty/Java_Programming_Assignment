// 1c.4 Write a Java program to display elements and their positions in a linked list
// (using l_listobj.get(p))

import java.util.*;

public class LinkedListPositionDisplay {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(Arrays.asList("Red", "Blue", "Green", "Yellow"));
        for (int i = 0; i < list.size(); i++) {
            System.out.println("Index " + i + ": " + list.get(i));
        }
    }
}
