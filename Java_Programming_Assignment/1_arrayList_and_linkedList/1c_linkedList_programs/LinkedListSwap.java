// 1c.5 Write a Java program that swaps two elements (first and third) in a linked list
// (using Collections.swap(l_list, 0, 2))

import java.util.*;

public class LinkedListSwap {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>(Arrays.asList("Red", "Blue", "Green", "Yellow"));
        Collections.swap(list, 0, 2);
        System.out.println("List after swapping: " + list);
    }
}
