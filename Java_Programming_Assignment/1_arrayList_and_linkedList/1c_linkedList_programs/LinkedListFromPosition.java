// 1c.1 Write a Java program to iterate through all elements in a linked list 
// starting at the specified position (2nd) using iterator

import java.util.*;

public class LinkedListFromPosition {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(Arrays.asList("Red", "Blue", "Green", "Yellow"));
        Iterator<String> itr = list.listIterator(1); // Start at index 1 (2nd element)
        while (itr.hasNext()) {
            System.out.print(itr.next() + " ");
        }
    }
}
