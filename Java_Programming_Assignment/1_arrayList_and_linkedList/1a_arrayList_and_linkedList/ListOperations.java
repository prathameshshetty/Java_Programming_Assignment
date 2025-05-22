/*1.a Develop a Java program for adding elements [Apple, Banana, Orange] into an ArrayList
and a LinkedList to perform the following operations with different functions directed as follows
1. Adding elements, 2. Adding element at specific index, 3. Adding multiple elements, 4.
Accessing elements,5. Updating elements, 6. Removing elements, 7. Searching elements, 8. List
size, 9. Iterating over list, 10. Using Iterator, 11. Sorting, 12. Sublist, 13. Clearing the list*/

import java.util.*;

public class ListOperations {
    public static void main(String[] args) {
        ArrayList<String> arrayList = new ArrayList<>(Arrays.asList("Apple", "Banana", "Orange"));
        LinkedList<String> linkedList = new LinkedList<>(arrayList);

        // 1. Adding element
        arrayList.add("Grapes");
        linkedList.add("Grapes");

        // 2. Adding element at specific index
        arrayList.add(1, "Pineapple");
        linkedList.add(1, "Pineapple");

        // 3. Adding multiple elements
        arrayList.addAll(Arrays.asList("Mango", "Papaya"));
        linkedList.addAll(Arrays.asList("Mango", "Papaya"));

        // 4. Accessing elements
        System.out.println("ArrayList Element at index 2: " + arrayList.get(2));
        System.out.println("LinkedList Element at index 2: " + linkedList.get(2));

        // 5. Updating elements
        arrayList.set(0, "AppleRed");
        linkedList.set(0, "AppleRed");

        // 6. Removing elements
        arrayList.remove("Orange");
        linkedList.remove("Orange");

        // 7. Searching elements
        System.out.println("ArrayList contains Banana? " + arrayList.contains("Banana"));
        System.out.println("LinkedList contains Banana? " + linkedList.contains("Banana"));

        // 8. List size
        System.out.println("ArrayList size: " + arrayList.size());
        System.out.println("LinkedList size: " + linkedList.size());

        // 9. Iterating over list
        for (String item : arrayList)
            System.out.println("ArrayList item: " + item);
        for (String item : linkedList)
            System.out.println("LinkedList item: " + item);

        // 10. Using Iterator
        Iterator<String> itr = arrayList.iterator();
        while (itr.hasNext())
            System.out.println("ArrayList Iterator: " + itr.next());

        // 11. Sorting
        Collections.sort(arrayList);
        Collections.sort(linkedList);
        System.out.println("Sorted ArrayList: " + arrayList);
        System.out.println("Sorted LinkedList: " + linkedList);

        // 12. Sublist
        System.out.println("ArrayList Sublist: " + arrayList.subList(0, 2));

        // 13. Clearing the list
        arrayList.clear();
        linkedList.clear();
        System.out.println("ArrayList cleared? " + arrayList.isEmpty());
        System.out.println("LinkedList cleared? " + linkedList.isEmpty());
    }
}