// 1c.2 Write a Java program to iterate a linked list in reverse order 
// (using objlist.descendingIterator())

import java.util.*;

public class LinkedListReverse {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(Arrays.asList("Red", "Blue", "Green", "Yellow"));
        Iterator<String> itr = list.descendingIterator();
        while (itr.hasNext()) {
            System.out.println(itr.next());
        }
    }
}
